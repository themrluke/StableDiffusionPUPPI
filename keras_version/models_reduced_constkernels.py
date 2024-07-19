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
        elif self.model_type == 'UNet-lite':
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
        #return NotImplementedError('UNet lite not yet implemented')


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
    def __init__(self, pad_left_right, pad_top_bottom):
        super(CustomPadding, self).__init__()
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
    def __init__(self, d_model, max_len):
        super(PositionalEncoding, self).__init__()
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
    def __init__(self, dim):
        super(Attention, self).__init__()
        self.group_norm = LayerNormalization(axis=-1, epsilon=1e-5)
        self.to_q = Dense(dim)
        self.to_k = Dense(dim)
        self.to_v = Dense(dim)
        self.to_out = Dense(dim)

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
        super(UNetLite_hls, self).__init__()
        self.time_dim = time_dim
        self.positional_encoding = PositionalEncoding(time_dim, max_len=5000)

        N = 8 # Change number of kernels at each layer here

        '''Define upsampling, ReLU activation function'''
        self.relu = ReLU()

        '''Down Block 1'''
        self.emb1 = Dense(c_in)
        self.convd1_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normd1_1 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.convd1_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normd1_2 = LayerNormalization(axis=-1, epsilon=1e-5)
        
        '''Down Block 2'''
        self.pool1 = Conv2D(N, kernel_size=3, strides=2, padding='valid', use_bias=False)
        self.normd2_1 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.emb2 = Dense(N)
        self.convd2_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normd2_2 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.convd2_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normd2_3 = LayerNormalization(axis=-1, epsilon=1e-5)

        '''Down Block 3'''
        self.pool2 = Conv2D(N, kernel_size=3, strides=2, padding='valid', use_bias=False)
        self.normd3_1 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.emb3 = Dense(N)
        self.convd3_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normd3_2 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.convd3_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normd3_3 = LayerNormalization(axis=-1, epsilon=1e-5)

        '''Bottleneck'''
        self.pool3 = Conv2D(N, kernel_size=3, strides=2, padding='valid', use_bias=False)
        self.normb1_1 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.emb4 = Dense(N)
        self.convb1_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normb1_2 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.attention = Attention(N)
        self.convb1_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normb1_3 = LayerNormalization(axis=-1, epsilon=1e-5)

        '''Up Block 1'''
        self.up1 = Conv2DTranspose(N, kernel_size=3, strides=2, padding='same')
        self.normu1_1 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.emb5 = Dense(2*N)
        self.convu1_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normu1_2 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.convu1_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normu1_3 = LayerNormalization(axis=-1, epsilon=1e-5)

        '''Up Block 2'''
        self.up2 = Conv2DTranspose(N, kernel_size=3, strides=2, padding='same')
        self.normu2_1 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.emb6 = Dense(2*N)
        self.convu2_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normu2_2 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.convu2_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normu2_3 = LayerNormalization(axis=-1, epsilon=1e-5)

        '''Up Block 3'''
        self.up3 = Conv2DTranspose(N, kernel_size=3, strides=2, padding='same')
        self.normu3_1 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.emb7 = Dense(2*N)
        self.convu3_1 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normu3_2 = LayerNormalization(axis=-1, epsilon=1e-5)
        self.convu3_2 = Conv2D(N, kernel_size=3, padding='valid', use_bias=False)
        self.normu3_3 = LayerNormalization(axis=-1, epsilon=1e-5)

        '''Output'''
        self.out = Conv2D(1, kernel_size=1, padding='valid', use_bias=True)
    
    @tf.function(reduce_retracing=True)
    def call(self, inputs):
        x, t = inputs
        batch_size = tf.shape(x)[0]  # Get the batch size from the input tensor x
        t = self.positional_encoding(t, batch_size)  # Pass batch size to the positional encoding

        # Down 1
        emb1 = tf.tile(self.emb1(t), [1, tf.shape(x)[1], tf.shape(x)[2], 1])  # (batch_size, height, width, c_in)
        xd1 = CustomPadding(1, 1)(emb1 + x)
        xd1 = self.convd1_1(xd1)
        xd1 = self.normd1_1(xd1)
        xd1 = self.relu(xd1)
        xd1 = CustomPadding(1, 1)(xd1)
        xd1 = self.convd1_2(xd1)
        xd1 = self.normd1_2(xd1)
        xd1 = self.relu(xd1)

       
        # Bottleneck 1
        xb1 = CustomPadding(1, 1)(xd1)
        xb1 = self.pool1(xb1)
        xb1 = self.normb1_1(xb1)
        xb1 = self.relu(xb1)
        emb4 = tf.tile(self.emb4(t), [1, tf.shape(xb1)[1], tf.shape(xb1)[2], 1])
        xb1 = CustomPadding(1, 1)(emb4 + xb1)
        xb1 = self.convb1_1(xb1)
        xb1 = self.normb1_2(xb1)
        xb1 = self.relu(xb1)
        #xb1 = self.attention(xb1)
        xb1 = CustomPadding(1, 1)(xb1)
        xb1 = self.convb1_2(xb1)
        xb1 = self.normb1_3(xb1)
        xb1 = self.relu(xb1)

        # Up 3
        xu1 = self.up1(xb1)
        xu1 = self.normu3_1(xu1)
        xu1 = self.relu(xu1)
        emb7 = tf.tile(self.emb7(t), [1, tf.shape(xu1)[1], tf.shape(xu1)[2], 1])
        xu1 = CustomPadding(1, 1)(emb7 + Concatenate()([xu1, xd1]))
        xu1 = self.convu3_1(xu1)
        xu1 = self.normu3_2(xu1)
        xu1 = self.relu(xu1)
        xu1 = CustomPadding(1, 1)(xu1)
        xu1 = self.convu3_2(xu1)
        xu1 = self.normu3_3(xu1)
        xu1 = self.relu(xu1)

        # Output
        output = self.out(xu1)
        output = self.relu(output)

        return output