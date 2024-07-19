import numpy as np
from utils import predict as q_predict
from utils import prepare_dataset
from make_plots import get_accuracy, get_efficiency, get_bkg_score, bkg_rates
from sklearn.metrics import confusion_matrix, log_loss, roc_curve, auc
from sklearn.utils import shuffle
import matplotlib.pyplot as plt
from tensorflow import keras
import tensorflow as tf
import pickle
import shutil
import hls4ml
from hls4ml.model.profiling import numerical
from hls4ml.converters import keras_to_hls
import os
import json
import yaml
from qkeras.utils import _add_supported_quantized_objects
from tensorflow.keras.models import load_model
import textwrap
import subprocess
import seaborn as sns
import sys
import re


def load_qkeras_model(path, modeltype):

  print ("Loading model")
  qkeras_model = load_model(f"{path}/{modeltype}")
  print ("Done")
  return qkeras_model


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

def hls4ml_converter(params, model_type, model_path, outdir):
    model = load_qkeras_model(model_path, model_type) 
    print(model.summary())      

    #hls4ml.model.optimizer.OutputRoundingSaturationMode.layers = ['Activation']
    #hls4ml.model.optimizer.OutputRoundingSaturationMode.rounding_mode = 'AP_RND'
    #hls4ml.model.optimizer.OutputRoundingSaturationMode.saturation_mode = 'AP_SAT'

    config = hls4ml.utils.config_from_keras_model(model, granularity='name')
    
    print("-----------------------------------")
    print("Configuration")

    config['Model']['Precision'] = f'ap_fixed<16, 6, AP_RND, AP_SAT>'

    ## Set all layers to <8,2> precision
    for l in config['LayerName']:
        config['LayerName'][l]['Strategy'] = 'Latency'
        config['LayerName'][l]['ParallelizationFactor'] = 1
        config['LayerName'][l]['ReuseFactor'] = 1
        config['LayerName'][l]['Precision']['result'] = 'ap_fixed<8,2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Precision']['weight'] = 'ap_fixed<8,2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Precision']['bias'] = 'ap_fixed<8,2, AP_RND, AP_SAT>'
        config['LayerName'][l]['Trace'] = True

    ## Set specific layers to custom quantizations
        
    # config['LayerName']['dense2']['Precision']['result'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
        
    # config['LayerName']['relu_3']['Precision'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
        
    # config['LayerName']['dense2']['Precision']['result'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['dense2']['Precision']['weight'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['dense2']['Precision']['bias'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'

    # config['LayerName']['relu_4']['Precision']["result"] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['relu_4']['Precision']['weight'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['relu_4']['Precision']['bias'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'

    config['LayerName']['output_logit']['Precision']["result"] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    config['LayerName']['output_logit']['Precision']['weight'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    config['LayerName']['output_logit']['Precision']['bias'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'

    config['LayerName']['output_logit_linear']['Precision']['result'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    config['LayerName']['output_logit_linear']['Precision']['weight'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    config['LayerName']['output_logit_linear']['Precision']['bias'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'

    config['LayerName']['final_sigmoid']['Precision']["result"] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    config['LayerName']['final_sigmoid']['Precision']['weight'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    config['LayerName']['final_sigmoid']['Precision']['bias'] = 'ap_fixed<16,6, AP_RND, AP_SAT>'
    # config['LayerName']['final_sigmoid']['table_t'] = 'ap_fixed<64,1>'

    ## Parallelize convolutional layers
    config['LayerName']['conv2d_0']['ParallelizationFactor'] = 6
    config['LayerName']['conv2d_0']['ReuseFactor'] = 1
    
    config['LayerName']['conv2d_1']['ParallelizationFactor'] = 4
    config['LayerName']['conv2d_1']['ReuseFactor'] = 1

    print("\n-----------------------------------")  
    print(f"{'Model':<20}: {config['Model']}")
    ## Print and save HLS config
    for i in config["LayerName"].keys():
        print(f"{i:<20}: {config['LayerName'][i]}")

    with open(f"{outdir}/config.json", "w") as outfile: 
        json.dump(config, outfile)
    print("-----------------------------------\n")  
    
    hls_model = hls4ml.converters.convert_from_keras_model(model,
                                                           hls_config=config,   
                                                           output_dir=outdir,    
                                                           clock_period=1000./params['clock_freq'], 
                                                           part=params['part'],
                                                           io_type='io_parallel')     
    
    hls_model.compile()
    return model, hls_model

def prepare_dataset(dataset, numsig, numbkg):

    f=open(dataset, 'rb')
    data = pickle.load(f) 
    y = data["labels"]
    sig_idx = data['idx'][(y==1)]
    sig_x = data['images'][(y==1)]
    sig_y = data['labels'][(y==1)]
    sig_ht = data[b'phaseIPFJetHt'][(y==1)]
    bkg_idx = data['idx'][(y==0)]
    bkg_x = data['images'][(y==0)]
    bkg_y = data['labels'][(y==0)]
    bkg_ht = data[b'phaseIPFJetHt'][(y==0)]
    idx = np.concatenate((sig_idx[:numsig], bkg_idx[:numbkg]))
    x = np.concatenate((sig_x[:numsig], bkg_x[:numbkg]))
    y = np.concatenate((sig_y[:numsig], bkg_y[:numbkg]))
    ht = np.concatenate((sig_ht[:numsig], bkg_ht[:numbkg]))

    #ht = np.log10(ht+1)
    #ht = ht / np.max(ht)
    x = tf.expand_dims(x, -1)
    y = tf.expand_dims(y, -1)
    ht = tf.expand_dims(ht, -1)
    outdata = {'x': x, 'ht': ht, 'y': y}

    return outdata



def layer_plots(model, hls_model, X_test, y_test, outdir):
    X_test = np.array(X_test)
    y_test = np.array(y_test).flatten()
    y_hls, hls4ml_trace = hls_model.trace(X_test)
    y_hls = np.array(y_hls).flatten()
    print(hls4ml_trace.keys())
    keras_trace = hls4ml.model.profiling.get_ymodel_keras(model, X_test)
    x=0
    layer_names = ['Layer 1 Convolution', 'Layer 1 ReLU', 'Layer 1 MaxPooling',
                   'Layer 2 Convolution', 'Layer 2 ReLU', 
                   'Layer 3 Dense', 'Layer 3 ReLU',
                   'Layer 4 Dense', 'Layer 4 ReLU',
                   'Layer 5 Dense', 'Layer 5 ReLU',
                   'Output Neuron', 'Output Sigmoid']
    for i, layer in enumerate(hls4ml_trace.keys()):
        if "output_logit_linear" in layer: continue
        else:
            x+=1
            print(f'Plotting graphs for: {layer} layer')
            plt.figure(facecolor='w')
            klayer = layer
            print('Length of values: :', len(hls4ml_trace[layer].flatten()))
            if '_alpha' in layer:
                klayer = layer.replace('_alpha', '')
            min_x = min(np.amin(hls4ml_trace[layer]), np.amin(keras_trace[klayer]))
            max_x = max(np.amax(hls4ml_trace[layer]), np.amax(keras_trace[klayer]))

            # Plot activations vs QKeras model
            plt.scatter(keras_trace[layer][y_test==0].flatten(), hls4ml_trace[klayer][y_test==0].flatten(), alpha=0.5, s=0.3, label='Background')
            plt.scatter(keras_trace[layer][y_test==1].flatten(), hls4ml_trace[klayer][y_test==1].flatten(), alpha=0.5, s=0.3, label='Signal')
            plt.plot([min_x, max_x], [min_x, max_x], c='gray', alpha=0.4)
            plt.title(f'{layer}')
            plt.xlabel('QKeras')
            plt.ylabel('HLS4ML')
            legend = plt.legend(loc='upper left', fontsize="15")
            legend.legendHandles[0]._sizes = [30]  # Set marker size for the first legend entry
            legend.legendHandles[1]._sizes = [30]
            plt.tight_layout()
            plt.savefig(f'{outdir}/{x}_{layer}_profiling.jpg', dpi=200)
            plt.show()
            plt.clf()

            # Plot distribution of activations
            plt.hist(hls4ml_trace[layer][y_test==0].flatten(), bins=100, alpha=0.5, label='Background')
            plt.hist(hls4ml_trace[layer][y_test==1].flatten(), bins=100, alpha=0.5, label='Signal')
            plt.legend(loc='upper right', fontsize="15")
            plt.xlabel('Layer output values')
            plt.ylabel('Count')
            plt.title(f'{layer}')
            plt.tight_layout()
            plt.savefig(f'{outdir}/{x}_{layer}_dist.jpg', dpi=200)
            plt.show()
            plt.clf()


def plot_rocs(y_red, q_scores, hls_scores, gdir):

    bgr = (40*10**3) * (2760 / 3564)
    fpr, tpr, thresholds, aucs = {}, {}, {}, {}
    fpr['QKeras'], tpr['QKeras'], thresholds['QKeras'] = roc_curve(list(map(int, list(y_red))), q_scores) #hacky but roc-curve object expects very specific dtype only
    fpr['HLS'], tpr['HLS'], thresholds['HLS'] = roc_curve(list(map(int, list(y_red))), hls_scores) #hacky but roc-curve object expects very specific dtype only
    for model in fpr.keys():
        aucs[model] = auc(fpr[model], tpr[model])

    rscores = np.random.random(q_scores.shape[0])
    rfpr, rtpr, rthresholds = roc_curve(list(map(int, list(y_red))), rscores)
    rfpr *= (40*10**3) * (2760 / 3564)

    plt.figure(facecolor='w')
    #plt.plot(rfpr,rtpr,label='Random',linestyle='-', color='gray', alpha=0.5, linewidth=2.0)
    for  i, model in enumerate( fpr.keys() ):
        fpr[model]*=bgr
        plt.plot(fpr[model],tpr[model],label='%s tagger, AUC = %.1f%%'%(model,aucs[model]*100.),linestyle='-')
    plt.xlabel("Background Rate [kHz]")
    plt.ylabel("Signal Efficiency")
    plt.xlim(0.1,32000)
    plt.semilogx()
    plt.grid(True)
    plt.legend(loc='upper left')
    plt.figtext(0.25, 0.90,'hls4ml',fontweight='bold', wrap=True, horizontalalignment='right', fontsize=14)
    plt.savefig(f'{gdir}/rocs.jpg', dpi=300)
    plt.show()
    plt.clf()
    
    q_min_thr = thresholds['QKeras'][fpr['QKeras']<10][-1]
    hls_min_thr = thresholds['HLS'][fpr['HLS']<10][-1]
    q_eff = tpr['QKeras'][fpr['QKeras']==q_min_thr]
    hls_eff = tpr['HLS'][fpr['HLS']==hls_min_thr]

    return q_eff, q_min_thr, hls_eff, hls_min_thr


def plot_scores(q_scores, hls_scores, gdir):
    plt.figure(facecolor='w')
    plt.scatter(q_scores, hls_scores, s=1)
    plt.xlabel('QKeras Model predictions')
    plt.ylabel('HLS model predictions')
    plt.xlim(0,1)
    plt.ylim(0,1)
    plt.savefig(f'{gdir}/qmodel_vs_hls.jpg', dpi=200)


def capture_and_parse_vivado_report(params, outdir, report_file_path):
    # Function to capture Vivado output to a file
    def capture_vivado_output_to_file():
        original_stdout = sys.stdout  # Save a reference to the original standard output

        with open(report_file_path, 'w') as f:
            sys.stdout = f  # Change the standard output to the file we created.
            try:
                if params['read_vivado']:
                    hls4ml.report.read_vivado_report(outdir)
            finally:
                sys.stdout = original_stdout  # Reset the standard output to its original value



    def parse_vivado_report(report_text):
        # Patterns to extract the utilization summary and latency information
        utilization_pattern = r'Utilization \(%\)\s*\|([^|]*)\|([^|]*)\|([^|]*)\|([^|]*)\|([^|]*)\|'
        # Updated latency pattern to match the new format
        latency_pattern =  r"\|\s*([0-9]+)\s*\|\s*([0-9]+)\s*\|\s*([\d.]+)\s*us\s*\|\s*([\d.]+)\s*us\s*\|\s*([0-9]+)\s*\|\s*([0-9]+)"

        data = {}
        # Search and extract utilization data
        utilization_match = re.search(utilization_pattern, report_text, re.MULTILINE)
        if utilization_match:
            # Extracting and assigning utilization percentages directly
            data['BRAM_18K'] = utilization_match.group(1).strip()
            data['DSP48E'] = utilization_match.group(2).strip()
            data['FF'] = utilization_match.group(3).strip()
            data['LUT'] = utilization_match.group(4).strip()
            data['URAM'] = utilization_match.group(5).strip()

        # Search and extract latency data
        latency_match = re.search(latency_pattern, report_text, re.MULTILINE)
        if latency_match:
            # Assigning latency data based on the captured groups
            data['Latency Cycles Min'] = latency_match.group(1).strip()
            data['Latency Cycles Max'] = latency_match.group(2).strip()
            data['Latency Min (us)'] = latency_match.group(3).strip()
            data['Latency Max (us)'] = latency_match.group(4).strip()
            data['Interval Min'] = latency_match.group(5).strip()
            data['Interval Max'] = latency_match.group(6).strip()

        return data


    # Step 1: Capture the Vivado output to a file
    capture_vivado_output_to_file()

    # Step 2: Read the captured report from the file
    with open(report_file_path, 'r') as file:
        report_text = file.read()

    # Step 3: Parse the report text to extract information
    extracted_data = parse_vivado_report(report_text)

    return extracted_data



def main():
    params = yaml.safe_load(open('params.yaml'))['hls_convertor']
    model_type = "QKerasModel"
    MODELPATH = "/software/ek19824/ML_software/cmsml_l1_software/qk_strides/20240521--113428-best-s3f1"
    #bits = yaml.safe_load(open('params.yaml'))['train_models']['bitwidth'][1:-1]
    #test_path = "/storage/2/ek19824/ML_data/231124_alldata/dataset_testing.pickle"
    test_path = '/storage/2/ek19824/ML_data/240213_all18data/dataset_testing.pickle'
    # test_path = '/storage/2/ek19824/ML_data/230521_all24data/dataset_testing.pickle'
    # test_path = '/storage/2/ek19824/ML_data/240521_all42data/dataset_testing.pickle'

    outdir = f"{MODELPATH}/hls_converted"

    gdir = f'{outdir}/graphs'
    if os.path.exists(outdir):
        shutil.rmtree(outdir)
    os.makedirs(outdir, exist_ok=False)
    os.makedirs(gdir, exist_ok=False)
    vivado_setup(outdir)
    q_model, hls_model = hls4ml_converter(params, model_type, MODELPATH, outdir)
    # hls_model.build(csim=True)        # Uncomment line if you want to perform full C-synthesis to get resource usage as well as producing plots

    hls_config = hls_model.config.config["HLSConfig"]
    # print(hls_config)
    ## Print and save HLS config
    for i in hls_config["LayerName"].keys():
        print(f"{i:<20}: {hls_config['LayerName'][i]}")

    with open(f"{outdir}/config_final.json", "w") as outfile: 
        json.dump(hls_config, outfile)
    print("-----------------------------------")  

    # Prepare dataset and compare predictions scores
    NUMSIG = 20000
    NUMBKG = 400000
    test_data = prepare_dataset(test_path, NUMSIG, NUMBKG)
    X = test_data['x']
    y = test_data['y']
    print('Test images: ', len(X), len(y))
    q_scores, q_model = q_predict(f"{MODELPATH}/{model_type}", X, verbose=True)
    hls_scores = np.array(hls_model.predict(np.ascontiguousarray(X)))
    hls_preds = {"score": np.array(hls_scores),
                 "label": np.array(y)}
    np.save(f"{outdir}/pred_labels.npy", y)
    # np.save(f"{outdir}/predictions_hls.npy", hls_preds)
    np.save(f"{outdir}/predictions.npy", q_scores)
    with open(f'{outdir}/predictions_hls.pickle', 'wb') as f:
        pickle.dump(hls_preds, f)
        f.close()
    
    # Compare ROC curves for HLS and Keras models
    q_eff, q_min_thr, hls_eff, hls_min_thr = plot_rocs(y, q_scores, hls_scores, gdir)
    # print(f'Thresholds | QK: {q_min_thr} | HLS: {hls_min_thr}')
    # print(f'Efficiency | QK: {q_eff} | HLS: {hls_eff}')
    
    # Plot weight and activation distribution bo plots
    p1,p2,p3,p4 = numerical(model=q_model, hls_model=hls_model, X=X)
    x=0
    for fig in [p1,p2,p3,p4]:
        x+=1
        fig.savefig(f'{gdir}/weights_plot{x}.jpg')
        fig.show()
    plt.clf()

    # Plot activation comparison and distribution for each layer
    layer_plots(q_model, hls_model, X, y, gdir)

    # report_file_path = f'{outdir}/report.txt'
    # # Example usage
    # extracted_data = capture_and_parse_vivado_report(params, outdir, report_file_path)
    
    # file_path = f'{gdir}/stats.txt'

    # # Open the file in write mode and write the output
    # with open(file_path, 'w') as file:
    #     file.write(f'Efficiency: {hls_eff}\n')
    #     file.write(f'hardware {str(list(extracted_data.items()))}\n')
    print(MODELPATH)
    print("------ HLS SYNTHESIS COMPLETE -----")

   
if __name__ == "__main__":
    main()
