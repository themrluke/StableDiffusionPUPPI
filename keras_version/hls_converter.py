import numpy as np
import matplotlib.pyplot as plt
import shutil
import hls4ml
from hls4ml.model.profiling import numerical
import os
import json
from tensorflow.keras.models import load_model
import textwrap
import subprocess
import tensorflow as tf
from data_processing import Dataset
from noise import NoiseScheduler
from Models.model_for_hls import positional_encoding



def load_keras_model(path):
  '''
  This function loads a Keras model from the specified path using 
  TensorFlow's load_model function.
  '''
  print ("Loading model")
  model = load_model(path)
  print ("Done")
  return model



def make_executable(path): #Make a local file executable
    '''
    This function makes a local file executable by changing its permissions    
    '''
    # Get the current permissions of the file
    mode = os.stat(path).st_mode 
    
    # Add execute permissions to the file
    mode |= (mode & 0o444) >> 2  # Extracts the read permissions 
                                 # >> 2 shifts these read permissions two bits to the right, effectively converting read to execute permissions
                                 # mode |= ... uses the bitwise OR operator to add these execute permissions to the file's current mode
    
    os.chmod(path, mode)         # Sets the file’s permissions to the new mode, which now includes execute permissions.


def shell_source(script):
    '''
    This function sources a shell script and updates the environment variables
    '''
    pipe = subprocess.Popen(". %s && env -0" % script, stdout=subprocess.PIPE, shell=True)
    output = pipe.communicate()[0].decode('utf-8')
    output = output[:-1] # fix for index out for range in 'env[ line[0] ] = line[1]'

    env = {}
    # split using null char
    for line in output.split('\x00'):
        line = line.split( '=', 1)
        # print(line)
        env[ line[0] ] = line[1]

    os.environ.update(env)


def vivado_setup(outdir):
    '''
    This function creates a shell script to set up the environment for Vivado HLS 2019.2
    '''
    executable_text = textwrap.dedent(
    f"""
    export PATH=/software/CAD/Xilinx/2019.2/Vivado/2019.2/bin:$PATH
    export LD_LIBRARY_PATH=/software/CAD/Xilinx/2019.2/Vivado/2019.2/lib:$LD_LIBRARY_PATH
    source /software/CAD/Xilinx/2019.2/Vivado/2019.2/settings64.sh
    export LC_ALL=en_US.utf-8
    export LANG=en_US.utf-8
    """
    )
    job_executable_file = os.path.join(outdir, "vivado_hls.sh")
    with open(job_executable_file, "w", encoding="utf-8") as f:
        f.write(executable_text)
    make_executable(job_executable_file)
    shell_source(job_executable_file)


# def vivado_setup(outdir): # Use this one for running on Luke WSL2 virtual machine
#     '''
#     This function sets up the environment for Vitis HLS
#     It writes and executes a shell script to set up the necessary paths and environment variables
#     '''
#     # Setting environment variables directly in Python
#     # Append new paths to existing PATH and LD_LIBRARY_PATH, or initialize them if they don't exist
#     os.environ['PATH'] = '/opt/Xilinx/Vitis_HLS/2024.1/bin:' + os.environ.get('PATH', '')
#     os.environ['LD_LIBRARY_PATH'] = '/opt/Xilinx/Vitis_HLS/2024.1/lib:' + os.environ.get('LD_LIBRARY_PATH', '')
#     os.environ['LC_ALL'] = 'en_US.utf-8'
#     os.environ['LANG'] = 'en_US.utf-8'
    
#     executable_text = textwrap.dedent(
#         f"""
#         # Update the PATH and LD_LIBRARY_PATH to include Vitis HLS
#         export PATH=/opt/Xilinx/Vitis_HLS/2024.1/bin:$PATH
#         export LD_LIBRARY_PATH=/opt/Xilinx/Vitis_HLS/2024.1/lib:$LD_LIBRARY_PATH
#         source /opt/Xilinx/Vitis_HLS/2024.1/settings64.sh
#         export LC_ALL=en_US.utf-8
#         export LANG=en_US.utf-8
#         """
#     )
    
#     job_executable_file = os.path.join(outdir, "vivado.sh")
#     with open(job_executable_file, "w", encoding="utf-8") as f:
#         f.write(executable_text)
    
#     make_executable(job_executable_file)

#     os.chmod(job_executable_file, 0o755) # Ensure the script is executable

#     # Directly execute the script instead of sourcing it
#     os.system(f'bash {job_executable_file}')

#     if 'linux' in sys.platform or 'darwin' in sys.platform:
#         found = os.system('command -v vitis_hls > /dev/null')
#         if found != 0:
#             print('Vitis HLS installation not found. Make sure "vitis_hls" is on PATH.')
#             sys.exit(1)
#     csim = synth = cosim = validation = export = vsynth = reset = 1
#     os.system(f"cd {outdir} && vitis_hls -f build_prj.tcl reset={reset} validation={validation} export={export} csim={csim} synth={synth} cosim={cosim} export=True vsynth={vsynth}")




def hls4ml_converter(params, model_path, outdir): 
    '''
    This function converts a Keras model to an HLS model using hls4ml.
    '''

    try:
        model = load_keras_model(model_path)
        print(model.summary())
    except Exception as e:
        print(f"Error loading model: {e}")
        return None, None

    config = hls4ml.utils.config_from_keras_model(model, granularity='name')
    
    print("-----------------------------------")
    print("Configuration")

    # Commented precisions fit the precisions of the model vals
    # config['Model']['Precision'] = 'ap_fixed<30, 8, AP_RND, AP_SAT>' # was 16, 6
    
    # for l in config['LayerName']:
    #     config['LayerName'][l]['Strategy'] = 'Latency' # Optimise for latency
    #     config['LayerName'][l]['ParallelizationFactor'] = 16 # look into increasing to decrease latency (start at 1)
    #     config['LayerName'][l]['ReuseFactor'] = 1 # Reusing resources vs increase latency
    #     config['LayerName'][l]['Precision']['result'] = 'ap_fixed<30, 8, AP_RND, AP_SAT>' # was 8, 2
    #     config['LayerName'][l]['Precision']['weight'] = 'ap_fixed<13, 1, AP_RND, AP_SAT>'
    #     config['LayerName'][l]['Precision']['bias'] = 'ap_fixed<7, 2, AP_RND, AP_SAT>'
    #     config['LayerName'][l]['Trace'] = True
    
    # # Can also set specific layers to custom quantizations (change layer names), e.g:

    # config['LayerName']['emb1']['Precision']["result"] = 'ap_fixed<3,1, AP_RND, AP_SAT>'
    # config['LayerName']['emb1']['Precision']['weight'] = 'ap_fixed<8,0, AP_RND, AP_SAT>'
    # config['LayerName']['emb1']['Precision']['bias'] = 'ap_fixed<3,0, AP_RND, AP_SAT>'

    # config['LayerName']['emb4']['Precision']["result"] = 'ap_fixed<5,1, AP_RND, AP_SAT>'
    # config['LayerName']['emb4']['Precision']['weight'] = 'ap_fixed<9,1, AP_RND, AP_SAT>'
    # config['LayerName']['emb4']['Precision']['bias'] = 'ap_fixed<3,0, AP_RND, AP_SAT>'

    # config['LayerName']['emb5']['Precision']["result"] = 'ap_fixed<4,1, AP_RND, AP_SAT>'
    # config['LayerName']['emb5']['Precision']['weight'] = 'ap_fixed<10,2, AP_RND, AP_SAT>'
    # config['LayerName']['emb5']['Precision']['bias'] = 'ap_fixed<8,0, AP_RND, AP_SAT>'



    config['Model']['Precision'] = 'ap_fixed<16, 6, AP_RND, AP_SAT>'
    #config['Model']['PackingFactor'] = 16
    config['Model']['Pipeline'] = 'Dataflow'  # Set the overall model pipeline to Dataflow

    for l in config['LayerName']:
        config['LayerName'][l]['Strategy'] = 'Latency'  # Optimize for latency
        config['LayerName'][l]['ParallelizationFactor'] = 8  # Parallelization factor
        config['LayerName'][l]['ReuseFactor'] = 1  # No reuse for lower latency
        config['LayerName'][l]['Precision']['result'] = 'ap_fixed<8, 2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Precision']['weight'] = 'ap_fixed<8, 2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Precision']['bias'] = 'ap_fixed<8, 2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Trace'] = True
        
        # # Specific configuration for convolutional layers
        # if 'conv' in l:  # Check if the layer is a convolutional layer
        #     #config['LayerName'][l]['Pipeline'] = 'Flatten'  # Flatten pipeline for internal operations
        #     config['LayerName'][l]['Pipeline'] = {'II': 1}  # Setting II to 1
        #     config['LayerName'][l]['Unroll'] = {'factor': 16}  # unroll factor for the loops




    print("\n-----------------------------------")  
    print(f"{'Model':<20}: {config['Model']}")
    ## Print and save HLS config
    for i in config["LayerName"].keys():
        print(f"{i:<20}: {config['LayerName'][i]}")

    with open(f"{outdir}/config.json", "w") as outfile: 
        json.dump(config, outfile)
    print("-----------------------------------\n")  

    try:
        hls_model = hls4ml.converters.convert_from_keras_model(model,
                                                            hls_config=config,   
                                                            output_dir=outdir,    
                                                            clock_period=1000./params['clock_freq'], 
                                                            part=params['part'],
                                                            io_type=params["io_type"])
    except Exception as e:
        print(f"Error during HLS conversion: {e}")
        return None, None

    hls_model.compile()

    return model, hls_model



def layer_plots(model, hls_model, noisy_images, pos_encoding, pos_encoding_bottleneck, plots_dir):
    
    # Generate the traces
    keras_trace = hls4ml.model.profiling.get_ymodel_keras(model, [noisy_images, pos_encoding, pos_encoding_bottleneck])
    y_hls, hls4ml_trace = hls_model.trace([noisy_images, pos_encoding, pos_encoding_bottleneck])
    y_hls = y_hls.reshape(noisy_images.shape)

    layer_names = list(hls4ml_trace.keys())
    
   
    for i, layer in enumerate(layer_names):
        if layer.endswith('_linear'):
            print('Ignoring linear layer: ', layer)
            continue # Ignore the layers which arent in keras model
        else:
            print(f'Plotting graphs for: {layer} layer')
            plt.figure(facecolor='w')

            #  if '_alpha' in layer:
            #         klayer = layer.replace('_alpha', '') # to make the identical layers same name between both models

            min_x = min(np.amin(hls4ml_trace[layer]), np.amin(keras_trace[layer]))
            max_x = max(np.amax(hls4ml_trace[layer]), np.amax(keras_trace[layer]))

            plt.scatter(keras_trace[layer].flatten(), hls4ml_trace[layer].flatten(), alpha=0.5, s=0.3)
            plt.plot([min_x, max_x], [min_x, max_x], c='gray', alpha=0.4)
            plt.title(f'{layer}')
            plt.xlabel('Keras')
            plt.ylabel('HLS4ML')
            plt.tight_layout()
            plt.savefig(f'{plots_dir}/{i+1}_{layer}_profiling.jpg', dpi=200)
            plt.show()
            plt.clf()

            plt.hist(hls4ml_trace[layer].flatten(), bins=100, alpha=0.5, label='HLS4ML')
            plt.hist(keras_trace[layer].flatten(), bins=100, alpha=0.5, label='Keras')
            plt.legend(loc='upper right', fontsize="15")
            plt.xlabel('Layer output values')
            plt.ylabel('Count')
            plt.title(f'{layer}')
            plt.tight_layout()
            plt.savefig(f'{plots_dir}/{i+1}_{layer}_dist.jpg', dpi=200)
            plt.show()
            plt.clf()


def main():
    params = {"clock_freq": 360, # was 360
              "part": 'xcvu13p-flga2577-2-e', # Originally: xcvu9p-flga2577-2-e
              "ReuseFactor": 1,
              "io_type": "io_parallel"} # (io_stream or io_parallel)
    
    MODELPATH = "trained_models_lite/for_hls_4pix_strip/model_epoch_9.h5"  # TensorFlow SavedModel path
    outdir = "hls_outputs_ioparallel"

    if os.path.exists(outdir):
        shutil.rmtree(outdir)
    os.makedirs(outdir, exist_ok=False)

    vivado_setup(outdir)
    model, hls_model = hls4ml_converter(params, MODELPATH, outdir)

    
    data_dir = "/cephfs/dice/projects/L1T/diffusion/datasets/"
    start_idx = 0
    end_idx = 1
    num_events = end_idx - start_idx
    dataset = Dataset(num_events, (120, 72), signal_file=f"{data_dir}/CaloImages_signal.root", pile_up_file=f"{data_dir}/CaloImages_bkg.root", save=False, start_idx=start_idx, end_idx=end_idx)
    dataset()
    new_dim = (64, 64)
    saturation_value = 512 # Change saturation energy here
    dataset.preprocess((64, 64))
    
    # Extract horizontal strip from y=26 to y=38 (12 pixels tall)
    # Change how much of image to train model on here
    strip_size = 'strip'

    if strip_size == 'full_image':
        y_start = 0
        y_end = 64

    elif strip_size == 'strip':
        y_start = 30
        y_end = 34

    new_dim=(y_end-y_start,64) #resize each data sample image into 64x64 resolution

    # Convert data to TensorFlow tensors
    clean_frames = tf.convert_to_tensor(dataset.signal, dtype=tf.float32)[:, y_start:y_end, :]
    pile_up = tf.convert_to_tensor(dataset.pile_up, dtype=tf.float32)[:, y_start:y_end, :]

    # Normalize data
    clean_frames = tf.clip_by_value(clean_frames, 0, saturation_value)
    pile_up = tf.clip_by_value(pile_up, 0, saturation_value)

    # Reshape data
    clean_frames = tf.expand_dims(clean_frames, axis=-1)
    pile_up = tf.expand_dims(pile_up, axis=-1)

    batch_size = end_idx - start_idx
    dataloader = tf.data.Dataset.from_tensor_slices(clean_frames).batch(batch_size)
    noise_scheduler = NoiseScheduler('pile-up')
    timestep = tf.convert_to_tensor(40)

    for batch_idx, clean_batch in enumerate(dataloader):
   
        # Generate positional encodings
        pos_encoding = positional_encoding(timestep, batch_size, new_dim, 4, 5000)
        pos_encoding_bottleneck = positional_encoding(timestep, batch_size, (new_dim[0] // 2, new_dim[1] // 2), 4, 5000)

        random_seed = np.random.randint(0, end_idx - start_idx)

        # Create noisy image and noise prediction
        noisy_images, noise = noise_scheduler.add_noise(
            clean_frame=clean_batch,
            noise_sample=pile_up,
            timestep=timestep,
            random_seed=random_seed,
            n_events=end_idx - start_idx
        )

        # Apply saturation value clipping and scaling
        noisy_images = tf.clip_by_value(noisy_images, 0, saturation_value)
        
        # Ensure inputs are numpy arrays
        noisy_images = np.asarray(noisy_images)
        pos_encoding = np.asarray(pos_encoding)
        pos_encoding_bottleneck = np.asarray(pos_encoding_bottleneck)

        # Now you have the noisy images, keras model predictions and hls model predictions.
        plots_dir = os.path.join(outdir, "plots")
        os.makedirs(plots_dir, exist_ok=True)

        layer_plots(model, hls_model, noisy_images, pos_encoding, pos_encoding_bottleneck, plots_dir)


        # Plot weight and activation distribution box plots
        X = [noisy_images, pos_encoding, pos_encoding_bottleneck] # Prepare the inputs for the numerical function

        p1, p2, p3, p4 = numerical(model=model, hls_model=hls_model, X=X)

        x = 0
        for fig in [p1, p2, p3, p4]:
            x += 1
            fig.savefig(f'{plots_dir}/weights_plot{x}.jpg')
            fig.show()
        plt.clf()


    #BUILD FIRMWARE
    print('BUILDING FIRMWARE')
    hls_model.build(csim=True)
    hls_config = hls_model.config.config["HLSConfig"]

    for i in hls_config["LayerName"].keys():
        print(f"{i:<20}: {hls_config['LayerName'][i]}")

    with open(f"{outdir}/config_final.json", "w") as outfile:
        json.dump(hls_config, outfile)
    print("-----------------------------------")
    csim = synth = cosim = validation = export = vsynth = reset = 1
    os.system(f"cd {outdir} && vivado_hls -f build_prj.tcl reset={reset} validation={validation} export={export} csim={csim} synth={synth} cosim={cosim} export=True vsynth={vsynth}")

    print("------ HLS SYNTHESIS COMPLETE -----")
    
    
if __name__ == "__main__":
    main()