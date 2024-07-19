from typing import Tuple
import tensorflow as tf
import numpy as np
from diffusers import DDPMScheduler
from dataclasses import dataclass
import time

@dataclass
class NoiseScheduler:
    noise_type: str  # 'gaussian' or 'pile-up'

    def add_noise(self, clean_frame: tf.Tensor, timestep: tf.Tensor, noise_sample: tf.Tensor, 
                  n_events: int, **kwargs) -> Tuple[tf.Tensor, tf.Tensor]:
        seed_value = kwargs.get('random_seed', int(time.time()))
        if self.noise_type == 'gaussian':
            return self.add_gaussian_noise(clean_frame, timestep)
        elif self.noise_type == 'pile-up':
            return self.add_pile_up_noise(clean_frame, noise_sample, timestep, n_events, random_seed = seed_value)
        else:
            raise ValueError(f"Unsupported noise type: {self.noise_type}")

    @staticmethod
    def add_gaussian_noise(clean_frame: tf.Tensor, timestep: tf.Tensor) -> Tuple[tf.Tensor, tf.Tensor]:
        noise_scheduler = DDPMScheduler(num_train_timesteps=1000)
        noise = tf.random.normal(shape=tf.shape(clean_frame))
        noisy_image = noise_scheduler.add_noise(clean_frame, noise, timestep)
        return noisy_image, noise
   
    @staticmethod
    def add_pile_up_noise(clean_frame: tf.Tensor, noise_sample: tf.Tensor, 
                        timestep: tf.Tensor, n_events: int, **kwargs) -> Tuple[tf.Tensor, tf.Tensor]:
        seed_value = kwargs.get('random_seed', int(time.time()))
        np.random.seed(seed_value)

        batch_size, height, width, channels = clean_frame.shape
        overlayed_array = tf.zeros_like(clean_frame)

        for i in range(batch_size):
            single_overlayed_array = tf.zeros((height, width, channels), dtype=clean_frame.dtype)
            for _ in range(int(timestep)):
                noise_tiled = tf.cast(tf.tile(noise_sample[np.random.randint(0, n_events)], [1, 1, channels]), clean_frame.dtype)
                single_overlayed_array += noise_tiled

            overlayed_array = tf.tensor_scatter_nd_update(overlayed_array, [[i]], [single_overlayed_array])

        noisy_image = clean_frame + overlayed_array

        return noisy_image, overlayed_array

