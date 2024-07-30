import numpy as np
import matplotlib.pyplot as plt
import pickle
import shutil
import hls4ml
#from hls4ml.model.profiling import numerical
from hls4ml.converters import keras_to_hls
import os
import json
from tensorflow.keras.models import load_model
import textwrap
import subprocess
import sys
import tensorflow as tf  # Import TensorFlow

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


# def vivado_setup(outdir): # Use this one at home
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

    config['Model']['Precision'] = 'ap_fixed<16, 6, AP_RND, AP_SAT>'

    for l in config['LayerName']:
        config['LayerName'][l]['Strategy'] = 'Latency'
        config['LayerName'][l]['ParallelizationFactor'] = 1
        config['LayerName'][l]['ReuseFactor'] = 1
        config['LayerName'][l]['Precision']['result'] = 'ap_fixed<8,2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Precision']['weight'] = 'ap_fixed<8,2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Precision']['bias'] = 'ap_fixed<8,2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Trace'] = True
    
    ## Can also set specific layers to custom quantizations, e.g:

    # config['LayerName']['output_logit']['Precision']["result"] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['output_logit']['Precision']['weight'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['output_logit']['Precision']['bias'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'

    # config['LayerName']['output_logit_linear']['Precision']['result'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['output_logit_linear']['Precision']['weight'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['output_logit_linear']['Precision']['bias'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'

    # config['LayerName']['final_sigmoid']['Precision']["result"] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['final_sigmoid']['Precision']['weight'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['final_sigmoid']['Precision']['bias'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'

    # ## Parallelize convolutional layers
    # config['LayerName']['conv2d_0']['ParallelizationFactor'] = 6
    # config['LayerName']['conv2d_0']['ReuseFactor'] = 1
    
    # config['LayerName']['conv2d_1']['ParallelizationFactor'] = 4
    # config['LayerName']['conv2d_1']['ReuseFactor'] = 1

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


### Ignore this for now
# def layer_plots(model, hls_model, X_test, y_test, outdir):
#     X_test = np.array(X_test)
#     y_test = np.array(y_test).flatten()
#     y_hls, hls4ml_trace = hls_model.trace(X_test)
#     y_hls = np.array(y_hls).flatten()
#     print(hls4ml_trace.keys())
#     keras_trace = hls4ml.model.profiling.get_ymodel_keras(model, X_test)
#     x=0
#     layer_names = ['Layer 1 Convolution', 'Layer 1 ReLU', 'Layer 1 MaxPooling',
#                    'Layer 2 Convolution', 'Layer 2 ReLU', 
#                    'Layer 3 Dense', 'Layer 3 ReLU',
#                    'Layer 4 Dense', 'Layer 4 ReLU',
#                    'Layer 5 Dense', 'Layer 5 ReLU',
#                    'Output Neuron', 'Output Sigmoid']
#     for i, layer in enumerate(hls4ml_trace.keys()):
#         if "output_logit_linear" in layer: continue
#         else:
#             x+=1
#             print(f'Plotting graphs for: {layer} layer')
#             plt.figure(facecolor='w')
#             klayer = layer
#             print('Length of values: :', len(hls4ml_trace[layer].flatten()))
#             if '_alpha' in layer:
#                 klayer = layer.replace('_alpha', '')
#             min_x = min(np.amin(hls4ml_trace[layer]), np.amin(keras_trace[klayer]))
#             max_x = max(np.amax(hls4ml_trace[layer]), np.amax(keras_trace[klayer]))

#             # Plot activations vs QKeras model
#             plt.scatter(keras_trace[layer][y_test==0].flatten(), hls4ml_trace[klayer][y_test==0].flatten(), alpha=0.5, s=0.3, label='Background')
#             plt.scatter(keras_trace[layer][y_test==1].flatten(), hls4ml_trace[klayer][y_test==1].flatten(), alpha=0.5, s=0.3, label='Signal')
#             plt.plot([min_x, max_x], [min_x, max_x], c='gray', alpha=0.4)
#             plt.title(f'{layer}')
#             plt.xlabel('QKeras')
#             plt.ylabel('HLS4ML')
#             legend = plt.legend(loc='upper left', fontsize="15")
#             legend.legendHandles[0]._sizes = [30]  # Set marker size for the first legend entry
#             legend.legendHandles[1]._sizes = [30]
#             plt.tight_layout()
#             plt.savefig(f'{outdir}/{x}_{layer}_profiling.jpg', dpi=200)
#             plt.show()
#             plt.clf()

#             # Plot distribution of activations
#             plt.hist(hls4ml_trace[layer][y_test==0].flatten(), bins=100, alpha=0.5, label='Background')
#             plt.hist(hls4ml_trace[layer][y_test==1].flatten(), bins=100, alpha=0.5, label='Signal')
#             plt.legend(loc='upper right', fontsize="15")
#             plt.xlabel('Layer output values')
#             plt.ylabel('Count')
#             plt.title(f'{layer}')
#             plt.tight_layout()
#             plt.savefig(f'{outdir}/{x}_{layer}_dist.jpg', dpi=200)
#             plt.show()
#             plt.clf()


def main():
    params = {"clock_freq": 360,
              "part": 'xcvu9p-flga2577-2-e',
              "ReuseFactor": 1,
              "io_type": "io_stream" # Changed from io_serial   
    }
    MODELPATH = "trained_models_lite/temp/model_epoch_9.h5"  # TensorFlow SavedModel path

    outdir = "hls_outputs"
    print('STAGE1')
    if os.path.exists(outdir):
        shutil.rmtree(outdir)
    os.makedirs(outdir, exist_ok=False)
    print('STAGE2')
    vivado_setup(outdir)
    print('STAGE3')
    model, hls_model = hls4ml_converter(params, MODELPATH, outdir)
    print('STAGE4')
    hls_model.build(csim=True)
    print('STAGE5')

    hls_config = hls_model.config.config["HLSConfig"]

    ## Print and save HLS config
    for i in hls_config["LayerName"].keys():
        print(f"{i:<20}: {hls_config['LayerName'][i]}")

    with open(f"{outdir}/config_final.json", "w") as outfile: 
        json.dump(hls_config, outfile)
    print("-----------------------------------")   
    csim = synth = cosim = validation = export = vsynth = reset = 1
    os.system(f"cd {outdir} && vivado_hls -f build_prj.tcl reset={reset} validation={validation} export={export} csim={csim} synth={synth} cosim={cosim} export=True vsynth={vsynth}")

    ### Add here some code to load in some data, add noise, and perform inference. Try to do this for both the model and hls_model.
    ### I think you can call the hls model in the same way you would with the normal model.





    ### Ignore this for now
    
    # Plot weight and activation distribution bo plots
    # p1,p2,p3,p4 = numerical(model=model, hls_model=hls_model, X=X)
    # x=0
    # for fig in [p1,p2,p3,p4]:
    #     x+=1
    #     fig.savefig(f'{gdir}/weights_plot{x}.jpg')
    #     fig.show()
    # plt.clf()

    # Plot activation comparison and distribution for each layer
    # layer_plots(model, hls_model, X, y, gdir)


    print(MODELPATH)
    print("------ HLS SYNTHESIS COMPLETE -----")

   
if __name__ == "__main__":
    main()
