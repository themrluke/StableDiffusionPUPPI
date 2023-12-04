from dataclasses import dataclass
from typing import Tuple
from diffusers import UNet2DModel
import torch
import torch.nn as nn
import torch.nn.functional as F
import os

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
        
        model = UNetLite()
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


class DoubleConv(nn.Module):
    def __init__(self, in_channels, out_channels, mid_channels=None, residual=False):
        super().__init__()
        self.residual = residual
        if not mid_channels:
            mid_channels = out_channels
        self.double_conv = nn.Sequential(
            nn.Conv2d(in_channels, mid_channels, kernel_size=3, padding=1, bias=False),
            nn.GroupNorm(1, mid_channels),
            nn.GELU(),
            nn.Conv2d(mid_channels, out_channels, kernel_size=3, padding=1, bias=False),
            nn.GroupNorm(1, out_channels),
        )

    def forward(self, x):
        if self.residual:
            return F.gelu(x + self.double_conv(x))
        else:
            return self.double_conv(x)


class Down(nn.Module):
    def __init__(self, in_channels, out_channels, emb_dim=4):
        super().__init__()
        self.maxpool_conv = nn.Sequential(
            nn.MaxPool2d(2),
            DoubleConv(in_channels, out_channels),
        )

        self.emb_layer = nn.Sequential(
            nn.SiLU(),
            nn.Linear(
                emb_dim,
                out_channels
            ),
        )

    def forward(self, x, t):
        x = self.maxpool_conv(x)
        emb = self.emb_layer(t)[:, :, None, None].repeat(1, 1, x.shape[-2], x.shape[-1])
        return x + emb


class Up(nn.Module):
    def __init__(self, in_channels, out_channels, emb_dim=4):
        super().__init__()

        self.up = nn.Upsample(scale_factor=2, mode="bilinear", align_corners=True)
        self.conv = nn.Sequential(
            DoubleConv(in_channels, out_channels, in_channels // 2),
        )

        self.emb_layer = nn.Sequential(
            nn.SiLU(),
            nn.Linear(
                emb_dim,
                out_channels
            ),
        )

    def forward(self, x, skip_x, t):
        x = self.up(x)
        x = torch.cat([skip_x, x], dim=1)
        x = self.conv(x)
        emb = self.emb_layer(t)[:, :, None, None].repeat(1, 1, x.shape[-2], x.shape[-1])
        return x + emb


class UNetLite(nn.Module):
    def __init__(self, c_in=1, c_out=1, time_dim=4, device="cpu"):
        super().__init__()
        self.device = device
        self.time_dim = time_dim
        self.inc = DoubleConv(c_in, 4)
        self.down1 = Down(4, 8)
        self.down2 = Down(8, 8)
        self.down3 = Down(8, 4)

        self.bot1 = DoubleConv(4, 8)
        self.bot2 = DoubleConv(8, 8)
        self.bot3 = DoubleConv(8, 4)

        self.up1 = Up(12, 8)
        self.up2 = Up(16, 8)
        self.up3 = Up(12, 64) #must have dims according to the skip connections
        self.outc = nn.Conv2d(64, c_out, kernel_size=1)

    def pos_encoding(self, t, channels):
        inv_freq = 1.0 / (
            10000
            ** (torch.arange(0, channels, 2, device=self.device).float() / channels)
        )
        pos_enc_a = torch.sin(t.repeat(1, channels // 2) * inv_freq)
        pos_enc_b = torch.cos(t.repeat(1, channels // 2) * inv_freq)
        pos_enc = torch.cat([pos_enc_a, pos_enc_b], dim=-1)
        return pos_enc

    def forward(self, x, t):
        t = t.unsqueeze(-1).type(torch.float)
        t = self.pos_encoding(t, self.time_dim)

        x1 = self.inc(x)
        x2 = self.down1(x1, t)
        x3 = self.down2(x2, t)
        x4 = self.down3(x3, t)

        x4 = self.bot1(x4)
        x4 = self.bot2(x4)
        x4 = self.bot3(x4)

        x = self.up1(x4, x3, t)
        x = self.up2(x, x2, t)
        x = self.up3(x, x1, t)

        output = self.outc(x)
        return output


