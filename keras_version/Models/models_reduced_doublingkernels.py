from dataclasses import dataclass
from typing import Tuple
from diffusers import UNet2DModel
import tensorflow as tf
from tensorflow.keras.layers import Conv2D, Conv2DTranspose, Dense, LayerNormalization, ReLU, Input, Concatenate, Add
import os
import numpy as np

@dataclass
class Model:

    model_type: str
    dim: Tuple[int, int]

    def __getitem__(self):

        if self.model_type == 'UNet':
            return self.get_unet()
        elif self.model_type == 'UNet_lite':
            return self.get_unet_lite()

    def get_unet(self):
        
        model = UNet2DModel(
            sample_size=(self.dim),  # Adjusted target image resolution
            in_channels=1,  # The number of input channels, 3 for RGB images
            out_channels=1,  # The number of output channels
            layers_per_block=1,  # How many ResNet layers to use per UNet block
            block_out_channels=(64, 64, 64),  # Adjusted number of output channels for each UNet block
            down_block_types=(
                "DownBlock2D",  # A regular ResNet downsampling block
                "AttnDownBlock2D",  # A ResNet downsampling block with spatial self-attention
                "DownBlock2D",
            ),
            up_block_types=(
                "UpBlock2D",  # A regular ResNet upsampling block
                "AttnUpBlock2D",  # A ResNet upsampling block with spatial self-attention
                "UpBlock2D",
            ),
        )
        return model

    def get_unet_lite(self):
        model = UNetLite_hls()
        return model

@dataclass
class TrainingConfig:
    output_dir: str 
    image_size = 64  # the generated image resolution
    train_batch_size = 16
    num_train_timesteps = 40
    eval_batch_size = 1  # how many images to sample during evaluation
    num_epochs = 10
    gradient_accumulation_steps = 1
    learning_rate = 1e-4
    lr_warmup_steps = 500
    save_image_epochs = 10
    save_model_epochs = 30
    mixed_precision = "fp16"  # `no` for float32, `fp16` for automatic mixed precision
    overwrite_output_dir = True  # overwrite the old model when re-running the notebook

    def __post_init__(self):
        os.makedirs(self.output_dir, exist_ok=True)

class CustomPadding(tf.keras.layers.Layer):
    def __init__(self, pad_left_right, pad_top_bottom, name=None):
        super(CustomPadding, self).__init__(name=name)
        self.pad_left_right = pad_left_right
        self.pad_top_bottom = pad_top_bottom

    def call(self, inputs):
        # Apply constant padding on the top and bottom
        padded = tf.pad(inputs, [[0, 0], [self.pad_top_bottom, self.pad_top_bottom], [0, 0], [0, 0]], mode='CONSTANT')
        # Apply circular padding on the left and right
        left_pad = padded[:, :, -self.pad_left_right:, :]
        right_pad = padded[:, :, :self.pad_left_right, :]
        padded = tf.concat([left_pad, padded, right_pad], axis=2)
        return padded

class PositionalEncoding(tf.keras.layers.Layer):
    def __init__(self, d_model, max_len, name=None):
        super(PositionalEncoding, self).__init__(name=name)
        self.d_model = d_model

        pos = np.arange(max_len)[:, np.newaxis]
        i = np.arange(d_model)[np.newaxis, :]
        angle_rates = 1 / np.power(10000, (2 * (i // 2)) / np.float32(d_model))

        angle_rads = pos * angle_rates
        angle_rads[:, 0::2] = np.sin(angle_rads[:, 0::2])
        angle_rads[:, 1::2] = np.cos(angle_rads[:, 1::2])

        self.pos_encoding = tf.constant(angle_rads, dtype=tf.float32)

    def call(self, timestep, batch_size):
        # Ensure timestep is int32
        timestep = tf.cast(timestep, tf.int32)
        
        # Get positional encoding for the single timestep value
        positional_encoding = tf.expand_dims(self.pos_encoding[timestep], 0)  # (1, time_dim)
        
        # Expand dimensions to match batch size
        positional_encoding = tf.expand_dims(tf.expand_dims(positional_encoding, 0), 0)  # (1, 1, 1, time_dim)
        
        return tf.tile(positional_encoding, [batch_size, 1, 1, 1])  # (batch_size, 1, 1, time_dim)

class Attention(tf.keras.layers.Layer):
    def __init__(self, dim, name=None):
        super(Attention, self).__init__(name=name)
        self.group_norm = LayerNormalization(axis=-1, epsilon=1e-5)
        self.to_q = Dense(dim, name=f'{name}_to_q')
        self.to_k = Dense(dim, name=f'{name}_to_k')
        self.to_v = Dense(dim, name=f'{name}_to_v')
        self.to_out = Dense(dim, name=f'{name}_to_out')

    def call(self, x):
        b, h, w, c = tf.shape(x)[0], tf.shape(x)[1], tf.shape(x)[2], tf.shape(x)[3]
        norm_x = self.group_norm(x)
        norm_x = tf.reshape(norm_x, (b, h * w, c))

        q = self.to_q(norm_x)
        k = self.to_k(norm_x)
        v = self.to_v(norm_x)

        attn_weights = tf.einsum('bqc,bkc->bqk', q, k) * (tf.cast(c, tf.float32) ** (-0.5))

        attn_weights = tf.nn.softmax(attn_weights, axis=-1)

        attn_output = tf.einsum('bqk,bkc->bqc', attn_weights, v)
        attn_output = self.to_out(attn_output)

        b, h, w, c = [tf.cast(dim, tf.int32) for dim in [b, h, w, c]]
        attn_output = tf.reshape(attn_output, (b, h, w, c))
        return attn_output

class UNetLite_hls(tf.keras.Model):
    def __init__(self, c_in=1, time_dim=4):
        super(UNetLite_hls, self).__init__(name='UNetLite_hls')
        self.time_dim = time_dim
        self.positional_encoding = PositionalEncoding(time_dim, max_len=5000, name='positional_encoding')

        N = 4  # Change number of kernels at each layer here

        '''Down Block 1'''
        self.emb1 = Dense(c_in, name='emb1')
        self.convd1_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False, name='convd1_1')
        self.normd1_1 = LayerNormalization(axis=-1, epsilon=1e-5, name='normd1_1')
        self.relu1 = ReLU(name='relu1')
        self.convd1_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False, name='convd1_2')
        self.normd1_2 = LayerNormalization(axis=-1, epsilon=1e-5, name='normd1_2')
        self.relu2 = ReLU(name='relu2')

        '''Bottleneck'''
        self.pool3 = Conv2D(N, kernel_size=3, strides=2, padding='valid', use_bias=False, name='pool3')
        self.normb1_1 = LayerNormalization(axis=-1, epsilon=1e-5, name='normb1_1')
        self.relu3 = ReLU(name='relu3')
        self.emb4 = Dense(N, name='emb4')
        self.convb1_1 = Conv2D(N * 2, kernel_size=3, padding='valid', use_bias=False, name='convb1_1')
        self.normb1_2 = LayerNormalization(axis=-1, epsilon=1e-5, name='normb1_2')
        self.relu4 = ReLU(name='relu4')
        self.convb1_2 = Conv2D(N * 2, kernel_size=3, padding='valid', use_bias=False, name='convb1_2')
        self.normb1_3 = LayerNormalization(axis=-1, epsilon=1e-5, name='normb1_3')
        self.relu5 = ReLU(name='relu5')

        '''Up Block 1'''
        self.up1 = Conv2DTranspose(N, kernel_size=3, strides=2, padding='same', name='up1')
        self.normu1_1 = LayerNormalization(axis=-1, epsilon=1e-5, name='normu1_1')
        self.relu6 = ReLU(name='relu6')
        self.emb5 = Dense(2 * N, name='emb5')
        self.convu1_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False, name='convu1_1')
        self.normu1_2 = LayerNormalization(axis=-1, epsilon=1e-5, name='normu1_2')
        self.relu7 = ReLU(name='relu7')
        self.convu1_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False, name='convu1_2')
        self.normu1_3 = LayerNormalization(axis=-1, epsilon=1e-5, name='normu1_3')
        self.relu8 = ReLU(name='relu8')

        '''Output'''
        self.out = Conv2D(1, kernel_size=1, padding='valid', use_bias=True, name='out')
        self.relu9 = ReLU(name='relu9')
    
    @tf.function(reduce_retracing=True)
    def call(self, inputs):
            
        x, t = inputs

        batch_size = tf.shape(x)[0]  # Get the batch size from the input tensor x
        t = self.positional_encoding(t, batch_size)  # Pass batch size to the positional encoding

        # Down 1
        emb1 = tf.tile(self.emb1(t), [1, tf.shape(x)[1], tf.shape(x)[2], 1])  # (batch_size, height, width, c_in)
        xd1 = CustomPadding(1, 1, name='custom_padding_1')(emb1 + x)
        xd1 = self.convd1_1(xd1)
        xd1 = self.normd1_1(xd1)
        xd1 = self.relu1(xd1)
        xd1 = CustomPadding(1, 1, name='custom_padding_2')(xd1)
        xd1 = self.convd1_2(xd1)
        xd1 = self.normd1_2(xd1)
        xd1 = self.relu2(xd1)

        # Bottleneck 1
        xb1 = CustomPadding(1, 1, name='custom_padding_3')(xd1)
        xb1 = self.pool3(xb1)
        xb1 = self.normb1_1(xb1)
        xb1 = self.relu3(xb1)
        emb4 = tf.tile(self.emb4(t), [1, tf.shape(xb1)[1], tf.shape(xb1)[2], 1])
        xb1 = CustomPadding(1, 1, name='custom_padding_4')(emb4 + xb1)
        xb1 = self.convb1_1(xb1)
        xb1 = self.normb1_2(xb1)
        xb1 = self.relu4(xb1)
        xb1 = CustomPadding(1, 1, name='custom_padding_5')(xb1)
        xb1 = self.convb1_2(xb1)
        xb1 = self.normb1_3(xb1)
        xb1 = self.relu5(xb1)

        # Up 1
        xu1 = self.up1(xb1)
        xu1 = self.normu1_1(xu1)
        xu1 = self.relu6(xu1)
        emb5 = tf.tile(self.emb5(t), [1, tf.shape(xu1)[1], tf.shape(xu1)[2], 1])
        xu1 = CustomPadding(1, 1, name='custom_padding_6')(emb5 + Concatenate()([xu1, xd1]))
        xu1 = self.convu1_1(xu1)
        xu1 = self.normu1_2(xu1)
        xu1 = self.relu7(xu1)
        xu1 = CustomPadding(1, 1, name='custom_padding_7')(xu1)
        xu1 = self.convu1_2(xu1)
        xu1 = self.normu1_3(xu1)
        xu1 = self.relu8(xu1)

        # Output
        output = self.out(xu1)
        output = self.relu9(output)

        return output