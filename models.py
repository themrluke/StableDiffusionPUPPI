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
        
        model = UNetLite_hls()
        return model
        #return NotImplementedError('UNet lite not yet implemented')
    

@dataclass
class TrainingConfig:
    output_dir: str 
    image_size = 16  # the generated image resolution
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


class UNetLite_hls(nn.Module):
    def __init__(self, c_in=1, c_out=1, time_dim=4, device="cpu"):
        super().__init__()
        self.device = device
        self.time_dim = time_dim

        self.relu = nn.ReLU()
        self.pool = nn.MaxPool2d(2)
        self.up = nn.Upsample(scale_factor=2, mode="nearest")

        self.emb1 = nn.Linear(4, c_in)
        self.convd1_1 = nn.Conv2d(c_in, 2, kernel_size=3, padding=1, bias=False)
        self.normd1_1 = nn.GroupNorm(1, 2)
        #relu
        self.convd1_2 = nn.Conv2d(2, 4, kernel_size=3, padding=1, bias=False)
        self.normd1_2 = nn.GroupNorm(1, 4)
        #relu
        #pool

        self.emb2 = nn.Linear(4, 4)
        self.convd2_1 = nn.Conv2d(4, 6, kernel_size=3, padding=1, bias=False)
        self.normd2_1 = nn.GroupNorm(1, 6)
        #relu
        self.convd2_2 = nn.Conv2d(6, 8, kernel_size=3, padding=1, bias=False)
        self.normd2_2 = nn.GroupNorm(1, 8)
        #relu
        #pool

        self.emb3 = nn.Linear(4, 8)
        self.convd3_1 = nn.Conv2d(8, 12, kernel_size=3, padding=1, bias=False)
        self.normd3_1 = nn.GroupNorm(1, 12)
        #relu
        self.convd3_2 = nn.Conv2d(12, 16, kernel_size=3, padding=1, bias=False)
        self.normd3_2 = nn.GroupNorm(1, 16)
        #relu
        #pool

        self.emb4 = nn.Linear(4, 16)
        self.convb1_1 = nn.Conv2d(16, 24, kernel_size=3, padding=1, bias=False)
        self.normb1_1 = nn.GroupNorm(1, 24)
        #relu
        self.convb1_2 = nn.Conv2d(24, 16, kernel_size=3, padding=1, bias=False)
        self.normb1_2 = nn.GroupNorm(1, 16)
        #relu

        #up
        self.emb5 = nn.Linear(4, 32)
        self.convu1_1 = nn.Conv2d(32, 16, kernel_size=3, padding=1, bias=False)
        self.normu1_1 = nn.GroupNorm(1, 16)
        #relu
        self.convu1_2 = nn.Conv2d(16, 8, kernel_size=3, padding=1, bias=False)
        self.normu1_2 = nn.GroupNorm(1, 8)
        #relu

        #up
        self.emb6 = nn.Linear(4, 16)
        self.convu2_1 = nn.Conv2d(16, 8, kernel_size=3, padding=1, bias=False)
        self.normu2_1 = nn.GroupNorm(1, 8)
        #relu
        self.convu2_2 = nn.Conv2d(8, 4, kernel_size=3, padding=1, bias=False)
        self.normu2_2 = nn.GroupNorm(1, 4)
        #relu

        #up
        self.emb7 = nn.Linear(4, 8)
        self.convu3_1 = nn.Conv2d(8, 4, kernel_size=3, padding=1, bias=False)
        self.normu3_1 = nn.GroupNorm(1, 4)
        #relu
        self.convu3_2 = nn.Conv2d(4, 2, kernel_size=3, padding=1, bias=False)
        self.normu3_2 = nn.GroupNorm(1, 2)
        #relu

        self.out = nn.Conv2d(2, 1, kernel_size=1, padding=0, bias=True)
        #relu


    def pos_encoding(self, t, channels):
        inv_freq = 1.0 / (
            10000 ** (torch.arange(0, channels, 2, device=self.device).float() / channels)
        )
        pos_enc_a = torch.sin(t.repeat(1, channels // 2) * inv_freq)
        pos_enc_b = torch.cos(t.repeat(1, channels // 2) * inv_freq)
        pos_enc = torch.cat([pos_enc_a, pos_enc_b], dim=-1)
        return pos_enc


    def forward(self, x, t):
        t = t.unsqueeze(-1).type(torch.float)
        t = self.pos_encoding(t, self.time_dim)

        # Down 1
        emb1 = self.emb1(t)[:, :, None, None].repeat(1, 1, x.shape[-2], x.shape[-1])
        xd1 = self.convd1_1(emb1+x)
        xd1 = self.normd1_1(xd1)
        xd1 = self.relu(xd1)
        xd1 = self.convd1_2(xd1)
        xd1 = self.normd1_2(xd1)
        xd1 = self.relu(xd1)
        xd1 = self.pool(xd1)

        # Down 2
        emb2 = self.emb2(t)[:, :, None, None].repeat(1, 1, xd1.shape[-2], xd1.shape[-1])
        xd2 = self.convd2_1(emb2+xd1)
        xd2 = self.normd2_1(xd2)
        xd2 = self.relu(xd2)
        xd2 = self.convd2_2(xd2)
        xd2 = self.normd2_2(xd2)
        xd2 = self.relu(xd2)
        xd2 = self.pool(xd2)

        # Down 3
        emb3 = self.emb3(t)[:, :, None, None].repeat(1, 1, xd2.shape[-2], xd2.shape[-1])
        xd3 = self.convd3_1(emb3+xd2)
        xd3 = self.normd3_1(xd3)
        xd3 = self.relu(xd3)
        xd3 = self.convd3_2(xd3)
        xd3 = self.normd3_2(xd3)
        xd3 = self.relu(xd3)
        xd3 = self.pool(xd3)

        # Bottleneck 1
        emb4 = self.emb4(t)[:, :, None, None].repeat(1, 1, xd3.shape[-2], xd3.shape[-1])
        xb1 = self.convb1_1(emb4+xd3)
        xb1 = self.normb1_1(xb1)
        xb1 = self.relu(xb1)
        xb1 = self.convb1_2(xb1)
        xb1 = self.normb1_2(xb1)
        xb1 = self.relu(xb1)

        # Up 1
        emb5 = self.emb5(t)[:, :, None, None].repeat(1, 1, xb1.shape[-2], xb1.shape[-1])
        xu1 = self.up(emb5 + torch.cat([xb1, xd3], dim=1))
        xu1 = self.convu1_1(xu1)
        xu1 = self.normu1_1(xu1)
        xu1 = self.relu(xu1)
        xu1 = self.convu1_2(xu1)
        xu1 = self.normu1_2(xu1)
        xu1 = self.relu(xu1)

        # Up 2
        emb6 = self.emb6(t)[:, :, None, None].repeat(1, 1, xu1.shape[-2], xu1.shape[-1])
        xu2 = self.up(emb6 + torch.cat([xu1, xd2], dim=1))
        xu2 = self.convu2_1(xu2)
        xu2 = self.normu2_1(xu2)
        xu2 = self.relu(xu2)
        xu2 = self.convu2_2(xu2)
        xu2 = self.normu2_2(xu2)
        xu2 = self.relu(xu2)

        # Up 3
        emb7 = self.emb7(t)[:, :, None, None].repeat(1, 1, xu2.shape[-2], xu2.shape[-1])
        xu3 = self.up(emb7 + torch.cat([xu2, xd1], dim=1))
        xu3 = self.convu3_1(xu3)
        xu3 = self.normu3_1(xu3)
        xu3 = self.relu(xu3)
        xu3 = self.convu3_2(xu3)
        xu3 = self.normu3_2(xu3)
        xu3 = self.relu(xu3)

        output = self.out(xu3)
        output = self.relu(output)
        return output
    

