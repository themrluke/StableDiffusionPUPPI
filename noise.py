from typing import Tuple
import torch
import numpy as np
from diffusers import DDPMScheduler
from dataclasses import dataclass
import time

@dataclass
class NoiseScheduler:
    noise_type: str  # 'gaussian' or 'pile-up'

    def add_noise(self, clean_frame: torch.Tensor, timestep: int, noise_sample: torch.Tensor, 
                  n_events: int, **kwargs) -> Tuple[torch.Tensor, torch.Tensor]:
        seed_value = kwargs.get('random_seed', int(time.time()))
        if self.noise_type == 'gaussian':
            return self.add_gaussian_noise(clean_frame, timestep)
        elif self.noise_type == 'pile-up':
            return self.add_pile_up_noise(clean_frame, noise_sample, timestep, n_events, random_seed = seed_value)
        else:
            raise ValueError(f"Unsupported noise type: {self.noise_type}")

    @staticmethod
    def add_gaussian_noise(clean_frame: torch.Tensor, timestep: int) -> Tuple[torch.Tensor, torch.Tensor]:
        noise_scheduler = DDPMScheduler(num_train_timesteps=1000)
        noise = torch.randn(clean_frame.shape)
        timesteps = torch.LongTensor([timestep])
        noisy_image = noise_scheduler.add_noise(clean_frame, noise, timesteps)
        return noisy_image, noise

    @staticmethod
    def add_pile_up_noise(clean_frame: torch.Tensor, noise_sample: torch.Tensor, 
                          timestep: int, n_events: int, **kwargs) -> Tuple[torch.Tensor, torch.Tensor]:
        seed_value = kwargs.get('random_seed', int(time.time()))
        np.random.seed(seed_value)

        if timestep > 0:
            overlayed_array = noise_sample[0].clone()
        else:
            overlayed_array = torch.tensor(0)

        for _ in range(timestep - 1):
            overlayed_array += noise_sample[np.random.randint(0, n_events, size=1)[0]]

        return (clean_frame + overlayed_array), overlayed_array
