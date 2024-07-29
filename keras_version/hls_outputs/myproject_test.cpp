#include <algorithm>
#include <fstream>
#include <iostream>
#include <map>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <vector>

#include "firmware/myproject.h"
#include "firmware/nnet_utils/nnet_helpers.h"

// hls-fpga-machine-learning insert bram

#define CHECKPOINT 5000

namespace nnet {
bool trace_enabled = true;
std::map<std::string, void *> *trace_outputs = NULL;
size_t trace_type_size = sizeof(double);
} // namespace nnet

int main(int argc, char **argv) {
    // load input data from text file
    std::ifstream fin("tb_data/tb_input_features.dat");
    // load predictions from text file
    std::ifstream fpr("tb_data/tb_output_predictions.dat");

#ifdef RTL_SIM
    std::string RESULTS_LOG = "tb_data/rtl_cosim_results.log";
#else
    std::string RESULTS_LOG = "tb_data/csim_results.log";
#endif
    std::ofstream fout(RESULTS_LOG);

    std::string iline;
    std::string pline;
    int e = 0;

    if (fin.is_open() && fpr.is_open()) {
        while (std::getline(fin, iline) && std::getline(fpr, pline)) {
            if (e % CHECKPOINT == 0)
                std::cout << "Processing input " << e << std::endl;
            char *cstr = const_cast<char *>(iline.c_str());
            char *current;
            std::vector<float> in;
            current = strtok(cstr, " ");
            while (current != NULL) {
                in.push_back(atof(current));
                current = strtok(NULL, " ");
            }
            cstr = const_cast<char *>(pline.c_str());
            std::vector<float> pr;
            current = strtok(cstr, " ");
            while (current != NULL) {
                pr.push_back(atof(current));
                current = strtok(NULL, " ");
            }

            // hls-fpga-machine-learning insert data
      hls::stream<input2_t> input_images("input_images");
      nnet::copy_data<float, input2_t, 0, N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2>(in, input_images);
      hls::stream<integer_input_t> input_time("input_time");
      nnet::copy_data<float, integer_input_t, 4096, N_INPUT_1_48>(in, input_time);
      hls::stream<input_t> pos_encoding_main("pos_encoding_main");
      nnet::copy_data<float, input_t, 4097, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(in, pos_encoding_main);
      hls::stream<input17_t> pos_encoding_bottleneck("pos_encoding_bottleneck");
      nnet::copy_data<float, input17_t, 20481, N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17>(in, pos_encoding_bottleneck);
      hls::stream<integer_input_t> input_time("input_time");
      hls::stream<result_t> layer49_out("layer49_out");

            // hls-fpga-machine-learning insert top-level-function
            myproject(input_images,input_time,pos_encoding_main,pos_encoding_bottleneck,input_time,layer49_out);

            if (e % CHECKPOINT == 0) {
                std::cout << "Predictions" << std::endl;
                // hls-fpga-machine-learning insert predictions
                for(int i = 0; i < N_INPUT_1_48; i++) {
                  std::cout << pr[i] << " ";
                }
                std::cout << std::endl;
                for(int i = 0; i < OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46; i++) {
                  std::cout << pr[i] << " ";
                }
                std::cout << std::endl;
                std::cout << "Quantized predictions" << std::endl;
                // hls-fpga-machine-learning insert quantized
                nnet::print_result<integer_input_t, N_INPUT_1_48>(input_time, std::cout, true);
                nnet::print_result<result_t, OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46>(layer49_out, std::cout, true);
            }
            e++;

            // hls-fpga-machine-learning insert tb-output
            nnet::print_result<integer_input_t, N_INPUT_1_48>(input_time, fout);
            nnet::print_result<result_t, OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46>(layer49_out, fout);
        }
        fin.close();
        fpr.close();
    } else {
        std::cout << "INFO: Unable to open input/predictions file, using default input." << std::endl;

        // hls-fpga-machine-learning insert zero
    hls::stream<input2_t> input_images("input_images");
    nnet::fill_zero<input2_t, N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2>(input_images);
    hls::stream<integer_input_t> input_time("input_time");
    nnet::fill_zero<integer_input_t, N_INPUT_1_48>(input_time);
    hls::stream<input_t> pos_encoding_main("pos_encoding_main");
    nnet::fill_zero<input_t, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(pos_encoding_main);
    hls::stream<input17_t> pos_encoding_bottleneck("pos_encoding_bottleneck");
    nnet::fill_zero<input17_t, N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17>(pos_encoding_bottleneck);
    hls::stream<integer_input_t> input_time("input_time");
    hls::stream<result_t> layer49_out("layer49_out");

        // hls-fpga-machine-learning insert top-level-function
        myproject(input_images,input_time,pos_encoding_main,pos_encoding_bottleneck,input_time,layer49_out);

        // hls-fpga-machine-learning insert output
        nnet::print_result<integer_input_t, N_INPUT_1_48>(input_time, std::cout, true);
        nnet::print_result<result_t, OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46>(layer49_out, std::cout, true);

        // hls-fpga-machine-learning insert tb-output
        nnet::print_result<integer_input_t, N_INPUT_1_48>(input_time, fout);
        nnet::print_result<result_t, OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46>(layer49_out, fout);
    }

    fout.close();
    std::cout << "INFO: Saved inference results to file: " << RESULTS_LOG << std::endl;

    return 0;
}
