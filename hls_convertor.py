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

import numpy as np
import pickle
import tensorflow as tf  

def load_qkeras_model(path):
  qkeras_layers = {}
  _add_supported_quantized_objects(qkeras_layers)
  keras_model = load_model(path, custom_objects=qkeras_layers)
  return keras_model


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

def hls4ml_converter(params, outdir):
    model = load_qkeras_model('{modelPath}/{modelType}'.format(modelPath=params['model_path'].strip('.h5'), modelType=params['model'] ) )

    hls4ml.model.optimizer.OutputRoundingSaturationMode.layers = ['Activation']
    hls4ml.model.optimizer.OutputRoundingSaturationMode.rounding_mode = 'AP_RND'
    hls4ml.model.optimizer.OutputRoundingSaturationMode.saturation_mode = 'AP_SAT'

    config = hls4ml.utils.config_from_keras_model(model, granularity='name')

    for l in config['LayerName']:
        config['LayerName'][l]['Strategy'] = 'Latency'

    # Examples of how to set number of bits for the model and specific layers
    # config['Model']['Precision'] = f'ap_fixed<16,6>'
    # config['LayerName']['sigmoid']['Precision'] = 'ap_fixed<16,1>'
    # config['LayerName']['sigmoid']['table_t'] = 'ap_fixed<64,1>'

    print("-----------------------------------")
    print("Configuration")
    print(config)
    print("-----------------------------------")
    print(config['Model'])

    hls_model = hls4ml.converters.convert_from_keras_model(model,
                                                           hls_config=config,   
                                                           output_dir=outdir,    
                                                           clock_period=1000./params['clock_freq'], 
                                                           part=params['part'],
                                                           io_type='io_stream')     
    
    hls_model.compile()
    return hls_model

def main():
    params = yaml.safe_load(open('params.yaml'))['hls_convertor']
    outdir = f"{os.getcwd()}/{params['directory']}"
    os.makedirs(outdir, exist_ok=True)
    vivado_setup(outdir)
    hls_model = hls4ml_converter(params, outdir)
    hls_model.build(csim=False, synth=True, cosim=False, export=False)

    if params['read_vivado']:
        hls4ml.report.read_vivado_report(outdir)

if __name__ == "__main__":
    main()
