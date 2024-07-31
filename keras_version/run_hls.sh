#!/bin/bash

# Set the environment variables for Vivado HLS 2019.2
export PATH=/software/CAD/Xilinx/2019.2/Vivado/2019.2/bin:$PATH
export LD_LIBRARY_PATH=/software/CAD/Xilinx/2019.2/Vivado/2019.2/lib:$LD_LIBRARY_PATH
source /software/CAD/Xilinx/2019.2/Vivado/2019.2/settings64.sh

# Print the PATH for debugging
echo "Final PATH: $PATH"

# Activate the conda environment
source /software/sa21722/miniconda3/bin/activate hls_env

# Ensure LD_LIBRARY_PATH includes the conda environment's lib directory
export LD_LIBRARY_PATH=/software/sa21722/miniconda3/envs/hls_env/lib:$LD_LIBRARY_PATH

# Run the Python script
nohup python hls_convertor.py &> hls_convertor.log &