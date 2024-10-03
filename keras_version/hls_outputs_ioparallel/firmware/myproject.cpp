#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input2_t input_images[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2], input_t pos_enc_main[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1], input17_t pos_enc_bottleneck[N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17],
    result_t layer48_out[OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=input_images complete dim=0
    #pragma HLS ARRAY_RESHAPE variable=pos_enc_main complete dim=0
    #pragma HLS ARRAY_RESHAPE variable=pos_enc_bottleneck complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer48_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=input_images,pos_enc_main,pos_enc_bottleneck,layer48_out 
    #pragma HLS DATAFLOW 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<emb1_weight_t, 4>(w49, "w49.txt");
        nnet::load_weights_from_txt<emb1_bias_t, 1>(b49, "b49.txt");
        nnet::load_weights_from_txt<convd1_1_weight_t, 36>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 4>(b6, "b6.txt");
        nnet::load_weights_from_txt<convd1_2_weight_t, 144>(w10, "w10.txt");
        nnet::load_weights_from_txt<bias10_t, 4>(b10, "b10.txt");
        nnet::load_weights_from_txt<pool3_weight_t, 144>(w14, "w14.txt");
        nnet::load_weights_from_txt<bias14_t, 4>(b14, "b14.txt");
        nnet::load_weights_from_txt<emb4_weight_t, 16>(w50, "w50.txt");
        nnet::load_weights_from_txt<emb4_bias_t, 4>(b50, "b50.txt");
        nnet::load_weights_from_txt<convb1_1_weight_t, 288>(w22, "w22.txt");
        nnet::load_weights_from_txt<bias22_t, 8>(b22, "b22.txt");
        nnet::load_weights_from_txt<convb1_2_weight_t, 576>(w26, "w26.txt");
        nnet::load_weights_from_txt<bias26_t, 8>(b26, "b26.txt");
        nnet::load_weights_from_txt<convu1_1_weight_t, 288>(w31, "w31.txt");
        nnet::load_weights_from_txt<convu1_1_bias_t, 4>(b31, "b31.txt");
        nnet::load_weights_from_txt<emb5_weight_t, 16>(w51, "w51.txt");
        nnet::load_weights_from_txt<emb5_bias_t, 4>(b51, "b51.txt");
        nnet::load_weights_from_txt<convu1_2_weight_t, 144>(w38, "w38.txt");
        nnet::load_weights_from_txt<bias38_t, 4>(b38, "b38.txt");
        nnet::load_weights_from_txt<convu1_3_weight_t, 144>(w42, "w42.txt");
        nnet::load_weights_from_txt<bias42_t, 4>(b42, "b42.txt");
        nnet::load_weights_from_txt<out_weight_t, 4>(w52, "w52.txt");
        nnet::load_weights_from_txt<out_bias_t, 1>(b52, "b52.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    layer49_t layer49_out[OUT_HEIGHT_49*OUT_WIDTH_49*N_FILT_49];
    #pragma HLS ARRAY_PARTITION variable=layer49_out complete dim=0
    nnet::pointwise_conv_2d_cl<input_t, layer49_t, config49>(pos_enc_main, layer49_out, w49, b49); // emb1
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer49_t>(layer49_out, "emb1", OUT_HEIGHT_49*OUT_WIDTH_49*N_FILT_49);
#endif

    layer5_t layer5_out[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
    nnet::add<input2_t, layer49_t, layer5_t, config5>(input_images, layer49_out, layer5_out); // add
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer5_t>(layer5_out, "add", N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2);
#endif

    layer6_t layer6_out[OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
    nnet::conv_2d_cl<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // convd1_1
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer6_t>(layer6_out, "convd1_1", OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6);
#endif

    layer9_t layer9_out[OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6];
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0
    nnet::relu<layer6_t, layer9_t, ReLU_config9>(layer6_out, layer9_out); // relu_1
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer9_t>(layer9_out, "relu_1", OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6);
#endif

    layer10_t layer10_out[OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10];
    #pragma HLS ARRAY_PARTITION variable=layer10_out complete dim=0
    nnet::conv_2d_cl<layer9_t, layer10_t, config10>(layer9_out, layer10_out, w10, b10); // convd1_2
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer10_t>(layer10_out, "convd1_2", OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10);
#endif

    layer13_t layer13_out[OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10];
    #pragma HLS ARRAY_PARTITION variable=layer13_out complete dim=0
    nnet::relu<layer10_t, layer13_t, ReLU_config13>(layer10_out, layer13_out); // relu_2
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer13_t>(layer13_out, "relu_2", OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10);
#endif

    layer14_t layer14_out[OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14];
    #pragma HLS ARRAY_PARTITION variable=layer14_out complete dim=0
    nnet::conv_2d_cl<layer13_t, layer14_t, config14>(layer13_out, layer14_out, w14, b14); // pool3
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer14_t>(layer14_out, "pool3", OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14);
#endif

    layer18_t layer18_out[OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14];
    #pragma HLS ARRAY_PARTITION variable=layer18_out complete dim=0
    nnet::relu<layer14_t, layer18_t, ReLU_config18>(layer14_out, layer18_out); // relu_3
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer18_t>(layer18_out, "relu_3", OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14);
#endif

    layer50_t layer50_out[OUT_HEIGHT_50*OUT_WIDTH_50*N_FILT_50];
    #pragma HLS ARRAY_PARTITION variable=layer50_out complete dim=0
    nnet::pointwise_conv_2d_cl<input17_t, layer50_t, config50>(pos_enc_bottleneck, layer50_out, w50, b50); // emb4
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer50_t>(layer50_out, "emb4", OUT_HEIGHT_50*OUT_WIDTH_50*N_FILT_50);
#endif

    layer21_t layer21_out[OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14];
    #pragma HLS ARRAY_PARTITION variable=layer21_out complete dim=0
    nnet::add<layer18_t, layer50_t, layer21_t, config21>(layer18_out, layer50_out, layer21_out); // add_1
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer21_t>(layer21_out, "add_1", OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14);
#endif

    layer22_t layer22_out[OUT_HEIGHT_22*OUT_WIDTH_22*N_FILT_22];
    #pragma HLS ARRAY_PARTITION variable=layer22_out complete dim=0
    nnet::conv_2d_cl<layer21_t, layer22_t, config22>(layer21_out, layer22_out, w22, b22); // convb1_1
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer22_t>(layer22_out, "convb1_1", OUT_HEIGHT_22*OUT_WIDTH_22*N_FILT_22);
#endif

    layer25_t layer25_out[OUT_HEIGHT_22*OUT_WIDTH_22*N_FILT_22];
    #pragma HLS ARRAY_PARTITION variable=layer25_out complete dim=0
    nnet::relu<layer22_t, layer25_t, ReLU_config25>(layer22_out, layer25_out); // relu_4
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer25_t>(layer25_out, "relu_4", OUT_HEIGHT_22*OUT_WIDTH_22*N_FILT_22);
#endif

    layer26_t layer26_out[OUT_HEIGHT_26*OUT_WIDTH_26*N_FILT_26];
    #pragma HLS ARRAY_PARTITION variable=layer26_out complete dim=0
    nnet::conv_2d_cl<layer25_t, layer26_t, config26>(layer25_out, layer26_out, w26, b26); // convb1_2
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer26_t>(layer26_out, "convb1_2", OUT_HEIGHT_26*OUT_WIDTH_26*N_FILT_26);
#endif

    layer29_t layer29_out[OUT_HEIGHT_26*OUT_WIDTH_26*N_FILT_26];
    #pragma HLS ARRAY_PARTITION variable=layer29_out complete dim=0
    nnet::relu<layer26_t, layer29_t, ReLU_config29>(layer26_out, layer29_out); // relu_5
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer29_t>(layer29_out, "relu_5", OUT_HEIGHT_26*OUT_WIDTH_26*N_FILT_26);
#endif

    layer30_t layer30_out[OUT_HEIGHT_30*OUT_WIDTH_30*N_CHAN_30];
    #pragma HLS ARRAY_PARTITION variable=layer30_out complete dim=0
    nnet::resize_nearest<layer29_t, config30>(layer29_out, layer30_out); // up1
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer30_t>(layer30_out, "up1", OUT_HEIGHT_30*OUT_WIDTH_30*N_CHAN_30);
#endif

    layer31_t layer31_out[OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31];
    #pragma HLS ARRAY_PARTITION variable=layer31_out complete dim=0
    nnet::conv_2d_cl<layer30_t, layer31_t, config31>(layer30_out, layer31_out, w31, b31); // convu1_1
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer31_t>(layer31_out, "convu1_1", OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31);
#endif

    layer34_t layer34_out[OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31];
    #pragma HLS ARRAY_PARTITION variable=layer34_out complete dim=0
    nnet::relu<layer31_t, layer34_t, ReLU_config34>(layer31_out, layer34_out); // relu_6
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer34_t>(layer34_out, "relu_6", OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31);
#endif

    layer51_t layer51_out[OUT_HEIGHT_51*OUT_WIDTH_51*N_FILT_51];
    #pragma HLS ARRAY_PARTITION variable=layer51_out complete dim=0
    nnet::pointwise_conv_2d_cl<input_t, layer51_t, config51>(pos_enc_main, layer51_out, w51, b51); // emb5
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer51_t>(layer51_out, "emb5", OUT_HEIGHT_51*OUT_WIDTH_51*N_FILT_51);
#endif

    layer37_t layer37_out[OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31];
    #pragma HLS ARRAY_PARTITION variable=layer37_out complete dim=0
    nnet::add<layer34_t, layer51_t, layer37_t, config37>(layer34_out, layer51_out, layer37_out); // add_2
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer37_t>(layer37_out, "add_2", OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31);
#endif

    layer38_t layer38_out[OUT_HEIGHT_38*OUT_WIDTH_38*N_FILT_38];
    #pragma HLS ARRAY_PARTITION variable=layer38_out complete dim=0
    nnet::conv_2d_cl<layer37_t, layer38_t, config38>(layer37_out, layer38_out, w38, b38); // convu1_2
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer38_t>(layer38_out, "convu1_2", OUT_HEIGHT_38*OUT_WIDTH_38*N_FILT_38);
#endif

    layer41_t layer41_out[OUT_HEIGHT_38*OUT_WIDTH_38*N_FILT_38];
    #pragma HLS ARRAY_PARTITION variable=layer41_out complete dim=0
    nnet::relu<layer38_t, layer41_t, ReLU_config41>(layer38_out, layer41_out); // relu_7
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer41_t>(layer41_out, "relu_7", OUT_HEIGHT_38*OUT_WIDTH_38*N_FILT_38);
#endif

    layer42_t layer42_out[OUT_HEIGHT_42*OUT_WIDTH_42*N_FILT_42];
    #pragma HLS ARRAY_PARTITION variable=layer42_out complete dim=0
    nnet::conv_2d_cl<layer41_t, layer42_t, config42>(layer41_out, layer42_out, w42, b42); // convu1_3
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer42_t>(layer42_out, "convu1_3", OUT_HEIGHT_42*OUT_WIDTH_42*N_FILT_42);
#endif

    layer45_t layer45_out[OUT_HEIGHT_42*OUT_WIDTH_42*N_FILT_42];
    #pragma HLS ARRAY_PARTITION variable=layer45_out complete dim=0
    nnet::relu<layer42_t, layer45_t, ReLU_config45>(layer42_out, layer45_out); // relu_8
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer45_t>(layer45_out, "relu_8", OUT_HEIGHT_42*OUT_WIDTH_42*N_FILT_42);
#endif

    layer52_t layer52_out[OUT_HEIGHT_52*OUT_WIDTH_52*N_FILT_52];
    #pragma HLS ARRAY_PARTITION variable=layer52_out complete dim=0
    nnet::pointwise_conv_2d_cl<layer45_t, layer52_t, config52>(layer45_out, layer52_out, w52, b52); // out
#ifndef __SYNTHESIS__
    nnet::save_layer_output<layer52_t>(layer52_out, "out", OUT_HEIGHT_52*OUT_WIDTH_52*N_FILT_52);
#endif

    nnet::relu<layer52_t, result_t, ReLU_config48>(layer52_out, layer48_out); // relu_9
#ifndef __SYNTHESIS__
    nnet::save_layer_output<result_t>(layer48_out, "relu_9", OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46);
#endif

}
