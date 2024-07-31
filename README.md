<h1 style="text-align: center; font-size: 3.5em;">StableDiffusionPUPPI</h1>

<p style="text-align: center;">Written by: Luke Johnson (sa21722)</p>

<p style="text-align: center;">Updated: 01/08/2024 </p>

<p style="text-align: center;">
Repository for the Bristol ML@L1 Hackathon project! :)
</p>

<br>
<br>

# Getting started

Firstly, the ML stack used is [PyTorch](https://pytorch.org/) and 🤗 [Hugging Face](https://huggingface.co/). Basic syntax and tutorials are available in the links. 

The algorithm is a Stable Diffusion chain which uses the U-Net architecture as the Deep Learning Model at its core. See 🤗 Hugging Face [diffusers](https://huggingface.co/docs/diffusers/index) library for further info.

The repo has a [PyTorch version](pytorch_version/) & [Keras version](keras_version/). The PyTorch folder has all the notebooks working with a PyTorch pipeline. 

An in-house implementation of U-Net is also available where model architecture can be changed in the following folders:

**PyTorch Folder**

- All the notebooks working with a PyTorch pipeline
- Note there are multiple PyTorch models with different architectures
- This [PyTorch model](pytorch_version/models_stripped_kernels.py) is bug free (as far as I am aware)
- The other `.py` model files have bugs like unexplicitly defined variable names in forward pass, so may need some adjusting if you want to use them
- This folder stopped being updated after **Week 6** of the [slides](L1_trigger_meeting_presentations)

**Keras Folder**

- All the notebooks working with a Keras pipeline
- Note there are multiple Keras [Models](keras_version/Models/) with different architectures
- These 2 Keras models: [model1](keras_version/Models/models_reduced_doublingkernels.py), [model2](keras_version/Models/models_reduced_constkernels.py) have great performance and a small size suitable for synthesis however custom padding and custom layers are not supported by hls4ml
- This [model](keras_version/Models/model_for_hls.py) can be used for synthesising into firmware but performance is worse
- This folder stopped being updated after **Week 8** of the [slides](L1_trigger_meeting_presentations)

<br>

&#9733; Note: [Keras 3.0](https://keras.io/keras_3/) can now serve as API to TensorFlow, PyTorch & JAX if you prefer to use it. 

&#9733; This [**Powerpoint**](L1_trigger_meeting_presentations) includes a summary of some of the main changes and results from the summer internship. These were the slides shown by **Luke** at the weekly Trigger Group meetings.

<br>

# Setting up the env

Training Diffusion models is expensive; follow this set up on a node with access to GPU, on Bristol **GPU04** is suitable (the code will automatically port training tasks to GPU if available).

1. Clone this repository 
2. Create the conda environment with `conda env create -f <env_name>.yaml`
3. If using PyTorch use: `env.yaml`, if using Keras use: `hls_env.yaml`
4. The preferred method of interaction with this repository is via [VSCode](https://code.visualstudio.com/download). Also download any extensions required for displaying jupyter notebooks as prompted.

<br>

# Data & models

Root datasets can be found in: 
`/cephfs/dice/projects/L1T/diffusion/datasets/`

Already-processed numpy data can be found here: 
`/storage/ek19824/stablediffusionpuppi/data`
(or can be loaded from .root and saved as `.npy` in current dir)

A sample trained huggingface model is here:
`/cephfs/dice/projects/L1T/diffusion/trained_models/trained_diffusor.pt`

**UNet2d** model architecture and config can be changed in most of the `<model>.py` files

<br>

# Large files

- It's a good idea to version trained models and their evaluation, this can be done with git Large File System (git LFS).
    - you can download git LFS with:
    ```bash
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh 
    mkdir -p ~/bin
    export PATH=~/bin:$PATH
    apt-get download git-lfs
    dpkg-deb -x git-lfs_* ~/bin
    ```
    - and add it your $PATH with:
    ```bash
    export PATH="$HOME/bin/usr/local/git-lfs/bin:$PATH"
    ```

- init git lfs in the repo with:
```git lfs install```

Then you can use the standard git commands.

<br>
<br>
<br>

<h1 style="text-align: center; font-size: 3.5em;">Recipe</h1>

Interfacing with models *(training, inference, jet clustering)* is to be done via the jupyter notebooks provided. In these notebooks there are various abstractions defined in standalone python modules (some of which can also be run from the CLI as needed).

Additions should be pushed to a new branch followed by a Merge Request to master.


## 1. Training Models

- Use the `training.ipynb` notebook to train new subclassing API models and **UNet2d**

- The notebooks in [Keras folder](keras_version/) have a list of variables in the first cell you might need to change to work with your setup

- You can also adjust the *saturation energy*, the *image dimensions* and the *number of training epochs* etc.

- There is a separate `training_hlsmodel.ipynb` notebook designed to work with the functional API and different architecture in the `model_for_hls.py` model

- Note: `training.ipynb` notebook saves **ONLY** the weights to a `.h5` file whereas `training_hlsmodel.ipynb` saves the model architecture **AND** weights to a `.h5` file


## 2. Inference

- Use the `inference.ipynb` notebook to test the subclassing API models' ability to denoise an image after the training process is complete

- The notebooks in [Keras folder](keras_version/) have a list of variables in the first cell you might need to change to work with your setup

- `inference.ipynb` imports a model from its python file and applies the weights from a `.h5` file. This notebook should be used to run inference on subclassing API models and **UNet2d**

- `inference_hls.ipynb` imports model architecture **AND** weights from a `.h5` file. This notebook is also designed to work with the functional API **keras model** and compiled **HLS Model**


## 3. Jet Finding

The `jet_clustering.ipynb` notebook can be used to:

- Run a jet finding algorithm to identify the local maxima in clean and denoised images

- Find the matching jets

- Calculate the Jet $P_t$ resolution distribution for $HH$ &rarr; $4b + 200PU$ vs. denoised events

- Identify the leading jet in each image

- Plot how the Jet Rate decreases as you increase the $P_t$ cutoff

<br>

The jet finding algorithm can be altered in [this file](keras_version/jet_finding.py)

Note: This notebook currently only works with the subclassing API models and **UNet2d**


## 4. HLS Conversion

Synthesis of the model for FPGA deployment, including firmware development using HLS4ML with `hls_converter.py`

- Loads a trained Keras model (which should be the one labelled `model_for_hls.py`)

- Sets up the environment for **VivadoHLS 2019.2**

- Creates a shell script to export necessary paths and environment variables for Vivado

- Makes the shell script executable and sources it to update the environment

- Converts a Keras model to an HLS model using hls4ml and compiles it

- Configures the HLS model with precision settings and optimization strategies

- Generates and saves layer-wise comparison plots between the Keras model and the HLS model

**NOTE:** Run the `hls_converter.py` script executing the [shell script](keras_version/run_hls.sh) in the terminal with: `./run_hls.sh`

<br>
<br>

# Ideas For Next Student

1. The numerical profiling function from hls4ml can be used to compare weights and activations between the Keras and HLS models in the `hls_converter.py` script. The `X=` argument should take in the inputs to the model which in our case is `X = [noisy_images, pos_encoding, pos_encoding_bottleneck]` but the positional encoding in the bottleneck has half the spatial dimensions as the positional encoding in the 1st block so the `X =`  argument returns an error complaining of inhomogeneous input shapes

2. Try implement custom padding (circular on sides and zero on top & bottom) in the keras model: `model_for_hls.py`

3. Play around with increasing model complexity while satisfying FPGA resources constraints

4. Adjust the hls config to reduce latency