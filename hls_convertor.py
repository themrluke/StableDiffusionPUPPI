from tensorflow import keras
import hls4ml
from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter
import os
import yaml
from qkeras.utils import _add_supported_quantized_objects
from tensorflow.keras.models import load_model
import textwrap
import subprocess
import sys
import torch
from models import UNetLite
import numpy as np
import pickle
import tensorflow as tf  

def load_qkeras_model(path):
  qkeras_layers = {}
  _add_supported_quantized_objects(qkeras_layers)
  keras_model = load_model(path, custom_objects=qkeras_layers)
  return keras_model

def load_pytorch_model(path):
  model = UNetLite()
#   pytorch_layers = {}
#   _add_supported_quantized_objects(pytorch_layers)
  checkpoint = torch.load(path)
  model.load_state_dict(checkpoint)

  return model


def make_executable(path):
    """Make a local file executable."""
    mode = os.stat(path).st_mode
    mode |= (mode & 0o444) >> 2  
    os.chmod(path, mode)

def shell_source(script):

    
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
      executable_text = textwrap.dedent(
      f"""
      export PATH=/opt/cactus/bin/uhal/tools:$PATH 
      export LD_LIBRARY_PATH=/opt/cactus/lib:$LD_LIBRARY_PATH 
      source /software/CAD/Xilinx/2019.2/Vivado/2019.2/settings64.sh;
      source /software/CAD/setup_mentor2019.sh
      export LC_ALL=en_US.utf-8
      export LANG=en_US.utf-8
      """
      )
      job_executable_file = os.path.join(outdir, f"vivado.sh") #this has to be kappaF kappaV directory!
      with open(job_executable_file, "w", encoding="utf-8") as f:
        f.write(executable_text)
      make_executable(job_executable_file)
      shell_source(job_executable_file)

      if 'linux' in sys.platform or 'darwin' in sys.platform:
            found = os.system('command -v vivado_hls > /dev/null')
            if found != 0:
                print('Vivado HLS installation not found. Make sure "vivado_hls" is on PATH.')
                sys.exit(1)
      csim = synth = cosim = validation = export = vsynth = reset =1
    #   os.system(f"cd {outdir} && vivado_hls -f build_prj.tcl reset={reset} validation={validation} export={export} csim={csim} synth={synth} cosim={cosim}  export=True vsynth={vsynth}")

def hls4ml_converter(params, outdir, bw):
    model = load_pytorch_model(params['model_path'])       

    # hls4ml.model.optimizer.OutputRoundingSaturationMode.layers = ['Activation']
    # hls4ml.model.optimizer.OutputRoundingSaturationMode.rounding_mode = 'AP_RND'
    # hls4ml.model.optimizer.OutputRoundingSaturationMode.saturation_mode = 'AP_SAT'

    config = hls4ml.utils.config_from_pytorch_model(model)

    # config['LayerName']['sigmoid']['Precision'] = 'ap_fixed<16,1>'
    # config['LayerName']['sigmoid']['table_t'] = 'ap_fixed<64,1>'
    # print("-----------------------------------")
    # print("Configuration")
    # print(config)
    # print("-----------------------------------")
    # print(config['Model'])

    # for l in config['LayerName']:
    #     config['LayerName'][l]['Strategy'] = 'Latency'
    #     config['LayerName'][l]['Trace'] = True
    # config['LayerName']['input_1']['Precision'] = f'ap_fixed<{bw}>'
    # config['LayerName']['max_pooling2d']['Precision'] = f'ap_fixed<{bw}>'
    # config['LayerName']['max_pooling2d_1']['Precision'] = f'ap_fixed<{bw}>'
    
    
    
    hls_model = hls4ml.converters.convert_from_pytorch_model(model,
                                                           hls_config=config,   
                                                           output_dir=outdir,    
                                                           clock_period=1000./params['clock_freq'], 
                                                           part=params['part'],
                                                           io_type='io_stream')     
    
    hls_model.compile()
    return model, hls_model


def main():

    params = {'model_path': 'trained_models/model', 
              'clock_freq': 360, 
              'part':       'xcvu9p-flga2577-2-e'}

    outdir = f"{os.getcwd()}/hls_converted"
    os.makedirs(outdir, exist_ok=True)
    vivado_setup(outdir)
    hls_model = hls4ml_converter(params, outdir)
    hls_model.build(csim=False, synth=True, cosim=False, export=False)

    if params['read_vivado']:
        hls4ml.report.read_vivado_report(outdir)

if __name__ == "__main__":
    main()
