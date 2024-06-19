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
        block_out_channels=(64, 64),#, 64),  # Adjusted number of output channels for each UNet block
        down_block_types=(
            "DownBlock2D",  # A regular ResNet downsampling block
            #"AttnDownBlock2D",  # A ResNet downsampling block with spatial self-attention
            "DownBlock2D",
        ),
        up_block_types=(
            "UpBlock2D",  # A regular ResNet upsampling block
            #"AttnUpBlock2D",  # A ResNet upsampling block with spatial self-attention
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


class DoubleConv(nn.Module):
    """
    Represents a neural network module composed of two convolutional layers
    """
    
    def __init__(self, in_channels, out_channels, mid_channels=None, residual=True): # Used in UNet-lite (not hls one) originally set residual=False
        """
        in_channels: Number of input channels.
        out_channels: Number of output channels.
        mid_channels: Number of channels for the intermediate convolution layer. If None, it defaults to out_channels.
        residual: A boolean indicating whether to use residual connections.
        """
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
    def __init__(self, c_in=1, c_out=1, time_dim=4, device="cuda"): # Changed from cpu to cuda
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

# Used for attention block mechanism in UNet_lite_hls
class Attention(nn.Module):
    def __init__(self, dim):
        super().__init__()
        self.group_norm = nn.GroupNorm(32, dim, eps=1e-05, affine=True)
        self.to_q = nn.Linear(dim, dim, bias=True)
        self.to_k = nn.Linear(dim, dim, bias=True)
        self.to_v = nn.Linear(dim, dim, bias=True)
        self.to_out = nn.Sequential(
            nn.Linear(dim, dim, bias=True),
            nn.Dropout(p=0.0)
        )

    def forward(self, x):
        b, c, h, w = x.shape
        x = x.view(b, c, h * w).permute(0, 2, 1)
        norm_x = self.group_norm(x)

        q = self.to_q(norm_x)
        k = self.to_k(norm_x)
        v = self.to_v(norm_x)

        attn_weights = torch.einsum('bqd,bkd->bqk', q, k) * (c ** (-0.5))
        attn_weights = attn_weights.softmax(dim=-1)

        attn_output = torch.einsum('bqk,bvd->bqd', attn_weights, v)
        attn_output = self.to_out(attn_output)

        attn_output = attn_output.permute(0, 2, 1).view(b, c, h, w)
        return attn_output

class UNetLite_hls(nn.Module):
    # Initialise the class with 1 input and output channel
    def __init__(self, c_in=1, c_out=1, time_dim=4, device="cuda"): # Changed from cpu to cuda
        super().__init__()
        self.device = device
        self.time_dim = time_dim

        '''Define upsampling, ReLU activation function and pooling method'''
        self.relu = nn.ReLU()
        #self.pool = nn.MaxPool2d(2)
        self.pool = nn.Conv2d(64, 64, kernel_size=3, stride=2, padding=0, bias=False) # Convolution method of downsampling
        self.up = nn.Upsample(scale_factor=2, mode="nearest")


        '''Down Block 1'''
        # 1st number in self.convd1_1 brackets is number of input channels
        # 2nd number in self.emb1 brackets line below is number of input channels
        self.emb1 = nn.Linear(4, c_in) # 2nd number in () here must match 1st number in () next line
        self.convd1_1 = nn.Conv2d(c_in, 64, kernel_size=3, padding=0, bias=False) # 2nd number in () here must match 2nd number in () next line
        self.normd1_1 = nn.GroupNorm(32, 64, eps=1e-05, affine=True) # 2nd number in () here must match 1st number in () next line
        #relu
        self.convd1_2 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False) # 2nd number in () here must match 2nd number in () next line
        self.normd1_2 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu
        #pool
        
        '''Down Block 2'''
        self.emb2 = nn.Linear(4, 64)
        self.convd2_1 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False)
        self.normd2_1 = nn.GroupNorm(32, 64, eps=1e-05, affine=True) # Make sure this 6 is the same as the  in the prev line. ie 6*N if the 6 above gets changed to 6*N
        #relu
        self.convd2_2 = nn.Conv2d(64,64, kernel_size=3, padding=0, bias=False)
        self.normd2_2 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu
        #pool

        '''Down Block 3'''
        self.emb3 = nn.Linear(4, 64)
        self.convd3_1 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False)
        self.normd3_1 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu
        self.convd3_2 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False)
        self.normd3_2 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu
        #pool

        '''Bottleneck'''
        self.emb4 = nn.Linear(4, 64)
        self.convb1_1 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False)
        self.normb1_1 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu
        self.attention = Attention(64) # Attention mechanism
        self.convb1_2 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False)
        self.normb1_2 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu

        '''Up Block 1'''
        self.emb5 = nn.Linear(4, 128)
        self.convu1_1 = nn.Conv2d(128, 64, kernel_size=3, padding=0, bias=False)
        self.normu1_1 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu
        self.convu1_2 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False)
        self.normu1_2 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu

        '''Up Block 2'''
        self.emb6 = nn.Linear(4, 128)
        self.convu2_1 = nn.Conv2d(128,64, kernel_size=3, padding=0, bias=False)
        self.normu2_1 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu
        self.convu2_2 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False)
        self.normu2_2 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu

        '''Up Block 3'''
        self.emb7 = nn.Linear(4, 128)
        self.convu3_1 = nn.Conv2d(128, 64, kernel_size=3, padding=0, bias=False)
        self.normu3_1 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu
        self.convu3_2 = nn.Conv2d(64, 64, kernel_size=3, padding=0, bias=False)
        self.normu3_2 = nn.GroupNorm(32, 64, eps=1e-05, affine=True)
        #relu

        '''Output'''
        self.out = nn.Conv2d(64, 1, kernel_size=1, padding=0, bias=True) # Final convolutional layer produce single output channel
        #relu


    def pos_encoding(self, t, channels):
        inv_freq = 1.0 / (
            10000 ** (torch.arange(0, channels, 2, device=self.device).float() / channels)
        )
        pos_enc_a = torch.sin(t.repeat(1, channels // 2) * inv_freq)
        pos_enc_b = torch.cos(t.repeat(1, channels // 2) * inv_freq)
        pos_enc = torch.cat([pos_enc_a, pos_enc_b], dim=-1)
        return pos_enc
    
    def custom_pad(self, input, pad_left_right, pad_top_bottom):
        '''Custom padding so LHS and RHS of image are touching (circular padding). Top & bottom padded values = 0'''
        # Circular padding on the left and right
        input = F.pad(input, pad=(pad_left_right, pad_left_right, 0, 0), mode='circular')
        # Zero padding on the top and bottom
        input = F.pad(input, pad=(0, 0, pad_top_bottom, pad_top_bottom), mode='constant', value=0)
        return input

    def forward(self, x, t):
        t = t.unsqueeze(-1).type(torch.float)
        t = self.pos_encoding(t, self.time_dim) # Apply positional encoding to t

        # Down 1
        emb1 = self.emb1(t)[:, :, None, None].repeat(1, 1, x.shape[-2], x.shape[-1])
        xd1 = self.custom_pad(emb1 + x, pad_left_right=1, pad_top_bottom=1)  # Apply custom padding
        xd1 = self.convd1_1(xd1)
        xd1 = self.normd1_1(xd1)
        xd1 = self.relu(xd1)
        xd1 = self.custom_pad(xd1, pad_left_right=1, pad_top_bottom=1)  # Apply custom padding
        xd1 = self.convd1_2(xd1)
        xd1 = self.normd1_2(xd1)
        xd1 = self.relu(xd1)

        # Down 2
        xd2 = self.custom_pad(xd1, pad_left_right=1, pad_top_bottom=1) # Pad before convolutional pooling method
        xd2 = self.pool(xd2)
        xd2 = self.normd1_1(xd2) # Normalisation after pooling
        xd2 = self.relu(xd2) # Activation function after pooling
        emb2 = self.emb2(t)[:, :, None, None].repeat(1, 1, xd2.shape[-2], xd2.shape[-1])
        xd2 = self.custom_pad(emb2 + xd2, pad_left_right=1, pad_top_bottom=1)
        xd2 = self.convd2_1(xd2)
        xd2 = self.normd2_1(xd2)
        xd2 = self.relu(xd2)
        xd2 = self.custom_pad(xd2, pad_left_right=1, pad_top_bottom=1)
        xd2 = self.convd2_2(xd2)
        xd2 = self.normd2_2(xd2)
        xd2 = self.relu(xd2)

        # Down 3
        xd3 = self.custom_pad(xd2, pad_left_right=1, pad_top_bottom=1)
        xd3 = self.pool(xd3)
        xd3 = self.normd1_1(xd3)
        xd3 = self.relu(xd3)
        emb3 = self.emb3(t)[:, :, None, None].repeat(1, 1, xd3.shape[-2], xd3.shape[-1])
        xd3 = self.custom_pad(emb3 + xd3, pad_left_right=1, pad_top_bottom=1)
        xd3 = self.convd3_1(xd3)
        xd3 = self.normd3_1(xd3)
        xd3 = self.relu(xd3)
        xd3 = self.custom_pad(xd3, pad_left_right=1, pad_top_bottom=1)
        xd3 = self.convd3_2(xd3)
        xd3 = self.normd3_2(xd3)
        xd3 = self.relu(xd3)
        
        # Bottleneck 1
        xb1 = self.custom_pad(xd3, pad_left_right=1, pad_top_bottom=1)
        xb1 = self.pool(xb1)
        xb1 = self.normd1_1(xb1)
        xb1 = self.relu(xb1)
        emb4 = self.emb4(t)[:, :, None, None].repeat(1, 1, xb1.shape[-2], xb1.shape[-1])
        xb1 = self.custom_pad(emb4 + xb1, pad_left_right=1, pad_top_bottom=1)
        xb1 = self.convb1_1(xb1)
        xb1 = self.normb1_1(xb1)
        xb1 = self.relu(xb1)
        xb1 = self.attention(xb1) # Attention block
        xb1 = self.custom_pad(xb1, pad_left_right=1, pad_top_bottom=1)
        xb1 = self.convb1_2(xb1)
        xb1 = self.normb1_2(xb1)
        xb1 = self.relu(xb1)

        # Up 1
        xu1 = self.up(xb1)
        emb5 = self.emb5(t)[:, :, None, None].repeat(1, 1, xu1.shape[-2], xu1.shape[-1])
        xu1 = emb5 + torch.cat([xu1, xd3], dim=1)
        xu1 = self.custom_pad(xu1, pad_left_right=1, pad_top_bottom=1)
        xu1 = self.convu1_1(xu1)
        xu1 = self.normu1_1(xu1)
        xu1 = self.relu(xu1)
        xu1 = self.custom_pad(xu1, pad_left_right=1, pad_top_bottom=1)
        xu1 = self.convu1_2(xu1) 
        xu1 = self.normu1_2(xu1)
        xu1 = self.relu(xu1)

        # Up 2
        xu2 = self.up(xu1)
        emb6 = self.emb6(t)[:, :, None, None].repeat(1, 1, xu2.shape[-2], xu2.shape[-1])
        xu2 = emb6 + torch.cat([xu2, xd2], dim=1)
        xu2 = self.custom_pad(xu2, pad_left_right=1, pad_top_bottom=1)
        xu2 = self.convu2_1(xu2)
        xu2 = self.normu2_1(xu2)
        xu2 = self.relu(xu2)
        xu2 = self.custom_pad(xu2, pad_left_right=1, pad_top_bottom=1)
        xu2 = self.convu2_2(xu2)
        xu2 = self.normu2_2(xu2)
        xu2 = self.relu(xu2)

        # Up 3
        xu3 = self.up(xu2)
        emb7 = self.emb7(t)[:, :, None, None].repeat(1, 1, xu3.shape[-2], xu3.shape[-1])
        xu3 = emb7 + torch.cat([xu3, xd1], dim=1)
        xu3 = self.custom_pad(xu3, pad_left_right=1, pad_top_bottom=1)
        xu3 = self.convu3_1(xu3)
        xu3 = self.normu3_1(xu3)
        xu3 = self.relu(xu3)
        xu3 = self.custom_pad(xu3, pad_left_right=1, pad_top_bottom=1)
        xu3 = self.convu3_2(xu3)
        xu3 = self.normu3_2(xu3)
        xu3 = self.relu(xu3)

        # Output
        output = self.out(xu3)
        output = self.relu(output)
        return output
    

