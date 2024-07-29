#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input2_t input_1[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2], integer_input_t input_2[N_INPUT_1_48], input_t input_3[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1], input17_t input_4[N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17],
    integer_input_t input_2[N_INPUT_1_48], result_t layer49_out[OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46]
) {

    // hls-fpga-machine-learning insert IO

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<emb1_weight_t, 4>(w50, "w50.txt");
        nnet::load_weights_from_txt<emb1_bias_t, 1>(b50, "b50.txt");
        nnet::load_weights_from_txt<convd1_1_weight_t, 36>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 4>(b6, "b6.txt");
        nnet::load_weights_from_txt<convd1_2_weight_t, 144>(w10, "w10.txt");
        nnet::load_weights_from_txt<bias10_t, 4>(b10, "b10.txt");
        nnet::load_weights_from_txt<pool3_weight_t, 144>(w14, "w14.txt");
        nnet::load_weights_from_txt<bias14_t, 4>(b14, "b14.txt");
        nnet::load_weights_from_txt<emb4_weight_t, 16>(w51, "w51.txt");
        nnet::load_weights_from_txt<emb4_bias_t, 4>(b51, "b51.txt");
        nnet::load_weights_from_txt<convb1_1_weight_t, 288>(w22, "w22.txt");
        nnet::load_weights_from_txt<bias22_t, 8>(b22, "b22.txt");
        nnet::load_weights_from_txt<convb1_2_weight_t, 576>(w26, "w26.txt");
        nnet::load_weights_from_txt<bias26_t, 8>(b26, "b26.txt");
        nnet::load_weights_from_txt<convu1_1_weight_t, 288>(w31, "w31.txt");
        nnet::load_weights_from_txt<convu1_1_bias_t, 4>(b31, "b31.txt");
        nnet::load_weights_from_txt<emb5_weight_t, 16>(w52, "w52.txt");
        nnet::load_weights_from_txt<emb5_bias_t, 4>(b52, "b52.txt");
        nnet::load_weights_from_txt<convu1_2_weight_t, 144>(w38, "w38.txt");
        nnet::load_weights_from_txt<bias38_t, 4>(b38, "b38.txt");
        nnet::load_weights_from_txt<convu1_3_weight_t, 144>(w42, "w42.txt");
        nnet::load_weights_from_txt<bias42_t, 4>(b42, "b42.txt");
        nnet::load_weights_from_txt<out_weight_t, 4>(w53, "w53.txt");
        nnet::load_weights_from_txt<out_bias_t, 1>(b53, "b53.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

