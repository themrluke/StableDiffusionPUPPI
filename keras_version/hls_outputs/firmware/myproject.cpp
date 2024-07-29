#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    hls::stream<input2_t> &input_images, hls::stream<integer_input_t> &time_input, hls::stream<input_t> &pos_enc_main, hls::stream<input17_t> &pos_enc_bottleneck,
    hls::stream<integer_input_t> &time_input, hls::stream<result_t> &layer49_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=input_images,time_input,pos_enc_main,pos_enc_bottleneck,time_input,layer49_out 
    #pragma HLS DATAFLOW 

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
        nnet::load_weights_from_txt<out_weight_t, 4>(w62, "w62.txt");
        nnet::load_weights_from_txt<out_bias_t, 1>(b62, "b62.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<input_t> layer53_cpy1("layer53_cpy1");
    #pragma HLS STREAM variable=layer53_cpy1 depth=4096
    hls::stream<input_t> layer53_cpy2("layer53_cpy2");
    #pragma HLS STREAM variable=layer53_cpy2 depth=4096
    nnet::clone_stream<input_t, input_t, 16384>(pos_enc_main, layer53_cpy1, layer53_cpy2); // clone_pos_enc_main

    hls::stream<layer50_t> layer50_out("layer50_out");
    #pragma HLS STREAM variable=layer50_out depth=4096
    nnet::pointwise_conv_2d_cl<input_t, layer50_t, config50>(layer53_cpy1, layer50_out, w50, b50); // emb1

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=4096
    nnet::add<input2_t, layer50_t, layer5_t, config5>(input_images, layer50_out, layer5_out); // add

    hls::stream<layer54_t> layer54_out("layer54_out");
    #pragma HLS STREAM variable=layer54_out depth=4356
    nnet::zeropad2d_cl<layer5_t, layer54_t, config54>(layer5_out, layer54_out); // zp2d_convd1_1

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=4096
    nnet::conv_2d_cl<layer54_t, layer6_t, config6>(layer54_out, layer6_out, w6, b6); // convd1_1

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=4096
    nnet::relu<layer6_t, layer9_t, ReLU_config9>(layer6_out, layer9_out); // relu_1

    hls::stream<layer55_t> layer55_out("layer55_out");
    #pragma HLS STREAM variable=layer55_out depth=4356
    nnet::zeropad2d_cl<layer9_t, layer55_t, config55>(layer9_out, layer55_out); // zp2d_convd1_2

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=4096
    nnet::conv_2d_cl<layer55_t, layer10_t, config10>(layer55_out, layer10_out, w10, b10); // convd1_2

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=4096
    nnet::relu<layer10_t, layer13_t, ReLU_config13>(layer10_out, layer13_out); // relu_2

    hls::stream<layer56_t> layer56_out("layer56_out");
    #pragma HLS STREAM variable=layer56_out depth=4225
    nnet::zeropad2d_cl<layer13_t, layer56_t, config56>(layer13_out, layer56_out); // zp2d_pool3

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=1024
    nnet::conv_2d_cl<layer56_t, layer14_t, config14>(layer56_out, layer14_out, w14, b14); // pool3

    hls::stream<layer18_t> layer18_out("layer18_out");
    #pragma HLS STREAM variable=layer18_out depth=1024
    nnet::relu<layer14_t, layer18_t, ReLU_config18>(layer14_out, layer18_out); // relu_3

    hls::stream<layer51_t> layer51_out("layer51_out");
    #pragma HLS STREAM variable=layer51_out depth=1024
    nnet::pointwise_conv_2d_cl<input17_t, layer51_t, config51>(pos_enc_bottleneck, layer51_out, w51, b51); // emb4

    hls::stream<layer21_t> layer21_out("layer21_out");
    #pragma HLS STREAM variable=layer21_out depth=1024
    nnet::add<layer18_t, layer51_t, layer21_t, config21>(layer18_out, layer51_out, layer21_out); // add_1

    hls::stream<layer57_t> layer57_out("layer57_out");
    #pragma HLS STREAM variable=layer57_out depth=1156
    nnet::zeropad2d_cl<layer21_t, layer57_t, config57>(layer21_out, layer57_out); // zp2d_convb1_1

    hls::stream<layer22_t> layer22_out("layer22_out");
    #pragma HLS STREAM variable=layer22_out depth=1024
    nnet::conv_2d_cl<layer57_t, layer22_t, config22>(layer57_out, layer22_out, w22, b22); // convb1_1

    hls::stream<layer25_t> layer25_out("layer25_out");
    #pragma HLS STREAM variable=layer25_out depth=1024
    nnet::relu<layer22_t, layer25_t, ReLU_config25>(layer22_out, layer25_out); // relu_4

    hls::stream<layer58_t> layer58_out("layer58_out");
    #pragma HLS STREAM variable=layer58_out depth=1156
    nnet::zeropad2d_cl<layer25_t, layer58_t, config58>(layer25_out, layer58_out); // zp2d_convb1_2

    hls::stream<layer26_t> layer26_out("layer26_out");
    #pragma HLS STREAM variable=layer26_out depth=1024
    nnet::conv_2d_cl<layer58_t, layer26_t, config26>(layer58_out, layer26_out, w26, b26); // convb1_2

    hls::stream<layer29_t> layer29_out("layer29_out");
    #pragma HLS STREAM variable=layer29_out depth=1024
    nnet::relu<layer26_t, layer29_t, ReLU_config29>(layer26_out, layer29_out); // relu_5

    hls::stream<layer30_t> layer30_out("layer30_out");
    #pragma HLS STREAM variable=layer30_out depth=4096
    nnet::resize_nearest<layer29_t, config30>(layer29_out, layer30_out); // up1

    hls::stream<layer59_t> layer59_out("layer59_out");
    #pragma HLS STREAM variable=layer59_out depth=4356
    nnet::zeropad2d_cl<layer30_t, layer59_t, config59>(layer30_out, layer59_out); // zp2d_convu1_1

    hls::stream<layer31_t> layer31_out("layer31_out");
    #pragma HLS STREAM variable=layer31_out depth=4096
    nnet::conv_2d_cl<layer59_t, layer31_t, config31>(layer59_out, layer31_out, w31, b31); // convu1_1

    hls::stream<layer34_t> layer34_out("layer34_out");
    #pragma HLS STREAM variable=layer34_out depth=4096
    nnet::relu<layer31_t, layer34_t, ReLU_config34>(layer31_out, layer34_out); // relu_6

    hls::stream<layer52_t> layer52_out("layer52_out");
    #pragma HLS STREAM variable=layer52_out depth=4096
    nnet::pointwise_conv_2d_cl<input_t, layer52_t, config52>(layer53_cpy2, layer52_out, w52, b52); // emb5

    hls::stream<layer37_t> layer37_out("layer37_out");
    #pragma HLS STREAM variable=layer37_out depth=4096
    nnet::add<layer34_t, layer52_t, layer37_t, config37>(layer34_out, layer52_out, layer37_out); // add_2

    hls::stream<layer60_t> layer60_out("layer60_out");
    #pragma HLS STREAM variable=layer60_out depth=4356
    nnet::zeropad2d_cl<layer37_t, layer60_t, config60>(layer37_out, layer60_out); // zp2d_convu1_2

    hls::stream<layer38_t> layer38_out("layer38_out");
    #pragma HLS STREAM variable=layer38_out depth=4096
    nnet::conv_2d_cl<layer60_t, layer38_t, config38>(layer60_out, layer38_out, w38, b38); // convu1_2

    hls::stream<layer41_t> layer41_out("layer41_out");
    #pragma HLS STREAM variable=layer41_out depth=4096
    nnet::relu<layer38_t, layer41_t, ReLU_config41>(layer38_out, layer41_out); // relu_7

    hls::stream<layer61_t> layer61_out("layer61_out");
    #pragma HLS STREAM variable=layer61_out depth=4356
    nnet::zeropad2d_cl<layer41_t, layer61_t, config61>(layer41_out, layer61_out); // zp2d_convu1_3

    hls::stream<layer42_t> layer42_out("layer42_out");
    #pragma HLS STREAM variable=layer42_out depth=4096
    nnet::conv_2d_cl<layer61_t, layer42_t, config42>(layer61_out, layer42_out, w42, b42); // convu1_3

    hls::stream<layer45_t> layer45_out("layer45_out");
    #pragma HLS STREAM variable=layer45_out depth=4096
    nnet::relu<layer42_t, layer45_t, ReLU_config45>(layer42_out, layer45_out); // relu_8

    hls::stream<layer62_t> layer62_out("layer62_out");
    #pragma HLS STREAM variable=layer62_out depth=4096
    nnet::pointwise_conv_2d_cl<layer45_t, layer62_t, config62>(layer45_out, layer62_out, w62, b62); // out

    nnet::relu<layer62_t, result_t, ReLU_config49>(layer62_out, layer49_out); // relu_9

}
