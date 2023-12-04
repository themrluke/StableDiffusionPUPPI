# StableDiffusionPUPPI


Repository for the Bristol ML@L1 Hackathon project! :)


## Getting started

Firstly, the ML stack used is [PyTorch](https://pytorch.org/) and 🤗 [Hugging Face](https://huggingface.co/). Basic syntax and tutorials are available in the links. 

The algorithm is a Stable Diffusion chain which uses the U-Net architecure as the Deep Learning Model at its core. See 🤗 Hugging Face [diffusors](https://huggingface.co/docs/diffusers/index) library for further info.

An in-house implementation of U-Net is also avaliable in [models.py](models.py) where model architecture can be changed.


Note: [Keras 3.0](https://keras.io/keras_3/) can now serve as API to TensorFlow, PyTorch & JAX if this you prefer to use it. 

## Setting up the env

1. Training Diffusion models is expensive; follow this set up on a node with access to GPU, on Bristol **GPU01** is suitable (the code will automaticlly port training tasks to GPU if available).
2. Clone this repository
3. Create the conda env with `conda env create -f env.yaml`
4. The prefered method of interaction with this reposiotry is via [VSCode](https://code.visualstudio.com/download). Also download any extensions required for displaying jupyter notebooks as propted.

## Data & models

Input data can be found in: `/storage/ys20884/StableDiffusion/stablediffusionpuppi/data`

A sample trained model is here:
`/storage/ys20884/StableDiffusion/stablediffusionpuppi/trained_models/trained_diffusor.pt`

## Structure 

Interfacing with models (both training and inference time) is to be done via the jupyter notebooks provided. In these notebooks there are various abstractions defined in standalone python modules (some of which can also be ran from the CLI as needed).

The code is designed to be maximally modularised for "plug and playing" various parts of the development as we work through the hackathon.

Additions should pushed to a new branch followed by a Merge Request to master.

## Large files

- It's a good idea to version trained models and their evaluation, this can be doen with git Large File System (git LFS).
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


