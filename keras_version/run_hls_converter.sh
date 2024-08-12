#!/bin/bash

# Set the environment variables for Vivado HLS 2019.2
export PATH=/software/CAD/Xilinx/2019.2/Vivado/2019.2/bin:$PATH
export LD_LIBRARY_PATH=/software/CAD/Xilinx/2019.2/Vivado/2019.2/lib:$LD_LIBRARY_PATH
source /software/CAD/Xilinx/2019.2/Vivado/2019.2/settings64.sh

# Activate the conda environment
source /software/sa21722/miniconda3/bin/activate hls_env

# Ensure LD_LIBRARY_PATH includes the conda environment's lib directory
export LD_LIBRARY_PATH=/software/sa21722/miniconda3/envs/hls_env/lib:$LD_LIBRARY_PATH

# Specify filename to run
filename=hls_converter.py

# Function to kill all child processes recursively
kill_all_children() {
    local pid=$1
    local child_pids=$(pgrep -P $pid)
    
    for child_pid in $child_pids; do
        kill_all_children $child_pid
    done

    echo "Killing child process with PID: $pid"
    kill -9 $pid
}

# Kill the previous instance of hls_converter.py if running
prev_pid=$(pgrep -f $filename)
if [ -n "$prev_pid" ]; then
    echo "Killing previous instance of $filename with PID: $prev_pid"
    kill_all_children $prev_pid
fi

logfile=hls_converter.log
# Run the Python script
nohup python $filename &> $logfile &

# Print the PID of the new hls converter process
new_pid=$!
echo "Started $filename with PID: $new_pid"

echo "$filename outputs sent to: $logfile"
