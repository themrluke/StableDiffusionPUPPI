from dataclasses import dataclass
from typing import Tuple
from diffusers import UNet2DModel
import tensorflow as tf
from tensorflow.keras.layers import Conv2D, UpSampling2D, Dense, BatchNormalization, ReLU, Input, Add
from tensorflow.keras.models import Model as KerasModel
import os
import numpy as np

@dataclass
class Model:
    model_type: str
    dim: Tuple[int, int]

    def __getitem__(self, batch_size):

        if self.model_type == 'UNet_lite':
            return self.get_unet_lite(batch_size)
        
        elif self.model_type == 'UNet2d':
            print('Import the other models files to retrain the UNet2d model')
        
        else:
            print('No model found with that name')

    def get_unet_lite(self, batch_size):
        return create_unet_lite_hls(self.dim, batch_size)

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

def positional_encoding(timestep, batch_size, dim, d_model, max_len):
    pos = np.arange(max_len)[:, np.newaxis]
    i = np.arange(d_model)[np.newaxis, :]
    angle_rates = 1 / np.power(10000, (2 * (i // 2)) / np.float32(d_model))
    angle_rads = pos * angle_rates
    angle_rads[:, 0::2] = np.sin(angle_rads[:, 0::2])
    angle_rads[:, 1::2] = np.cos(angle_rads[:, 1::2])
    pos_encoding = tf.constant(angle_rads, dtype=tf.float32)

    timestep = tf.cast(tf.reshape(timestep, [-1]), tf.int32)
    positional_encoding = tf.gather(pos_encoding, timestep)
    positional_encoding = tf.reshape(positional_encoding, [tf.shape(timestep)[0], 1, 1, d_model])
    return tf.tile(positional_encoding, [batch_size, dim[0], dim[1], 1])

def create_unet_lite_hls(dim, batch_size):
    c_in = 1
    time_dim = 4
    max_len = 5000
    N = 4  # Number of kernels at each layer

    inputs = Input(shape=(dim[0], dim[1], c_in))
    time_input = Input(shape=(1,), dtype=tf.int32)
    pos_encoding = Input(shape=(dim[0], dim[1], time_dim), dtype=tf.float32)
    pos_encoding_bottleneck = Input(shape=(32, 32, time_dim), dtype=tf.float32)  # Adjusted height/width for bottleneck

    # Down Block 1
    emb1 = Dense(c_in, name='emb1')(pos_encoding)
    xd1 = Add()([inputs, emb1])
    xd1 = Conv2D(N, kernel_size=3, padding='same', use_bias=False, name='convd1_1')(xd1)
    xd1 = BatchNormalization(axis=-1, epsilon=1e-5, name='normd1_1')(xd1)
    xd1 = ReLU(name='relu_1')(xd1)
    xd1 = Conv2D(N, kernel_size=3, padding='same', use_bias=False, name='convd1_2')(xd1)
    xd1 = BatchNormalization(axis=-1, epsilon=1e-5, name='normd1_2')(xd1)
    xd1 = ReLU(name='relu_2')(xd1)

    # Bottleneck
    xb1 = Conv2D(N, kernel_size=3, strides=2, padding='same', use_bias=False, name='pool3')(xd1)
    xb1 = BatchNormalization(axis=-1, epsilon=1e-5, name='normb1_1')(xb1)
    xb1 = ReLU(name='relu_3')(xb1)
    emb4 = Dense(N, name='emb4')(pos_encoding_bottleneck)
    xb1 = Add()([xb1, emb4])
    xb1 = Conv2D(N * 2, kernel_size=3, padding='same', use_bias=False, name='convb1_1')(xb1)
    xb1 = BatchNormalization(axis=-1, epsilon=1e-5, name='normb1_2')(xb1)
    xb1 = ReLU(name='relu_4')(xb1)
    xb1 = Conv2D(N * 2, kernel_size=3, padding='same', use_bias=False, name='convb1_2')(xb1)
    xb1 = BatchNormalization(axis=-1, epsilon=1e-5, name='normb1_3')(xb1)
    xb1 = ReLU(name='relu_5')(xb1)

    # Up Block 1
    xu1 = UpSampling2D(size=(2, 2), name='up1')(xb1)
    xu1 = Conv2D(N, kernel_size=3, padding='same', name='convu1_1')(xu1)
    xu1 = BatchNormalization(axis=-1, epsilon=1e-5, name='normu1_1')(xu1)
    xu1 = ReLU(name='relu_6')(xu1)
    emb5 = Dense(N, name='emb5')(pos_encoding)
    xu1 = Add()([xu1, emb5])
    xu1 = Conv2D(N, kernel_size=3, padding='same', use_bias=False, name='convu1_2')(xu1)
    xu1 = BatchNormalization(axis=-1, epsilon=1e-5, name='normu1_2')(xu1)
    xu1 = ReLU(name='relu_7')(xu1)
    xu1 = Conv2D(N, kernel_size=3, padding='same', use_bias=False, name='convu1_3')(xu1)
    xu1 = BatchNormalization(axis=-1, epsilon=1e-5, name='normu1_3')(xu1)
    xu1 = ReLU(name='relu_8')(xu1)

    # Output
    output = Conv2D(1, kernel_size=1, padding='same', use_bias=True, name='out')(xu1)
    output = ReLU(name='relu_9')(output)

    model = KerasModel(inputs=[inputs, time_input, pos_encoding, pos_encoding_bottleneck], outputs=output, name='UNetLite_hls')
    return model
