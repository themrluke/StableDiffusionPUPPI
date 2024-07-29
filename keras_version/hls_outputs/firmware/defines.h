#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 64
#define N_INPUT_2_1 64
#define N_INPUT_3_1 4
#define N_INPUT_1_1 64
#define N_INPUT_2_1 64
#define N_INPUT_3_1 4
#define N_INPUT_1_2 64
#define N_INPUT_2_2 64
#define N_INPUT_3_2 1
#define OUT_HEIGHT_50 64
#define OUT_WIDTH_50 64
#define N_FILT_50 1
#define N_INPUT_1_2 64
#define N_INPUT_2_2 64
#define N_INPUT_3_2 1
#define OUT_HEIGHT_54 66
#define OUT_WIDTH_54 66
#define N_CHAN_54 1
#define OUT_HEIGHT_6 64
#define OUT_WIDTH_6 64
#define N_FILT_6 4
#define OUT_HEIGHT_6 64
#define OUT_WIDTH_6 64
#define N_FILT_6 4
#define OUT_HEIGHT_55 66
#define OUT_WIDTH_55 66
#define N_CHAN_55 4
#define OUT_HEIGHT_10 64
#define OUT_WIDTH_10 64
#define N_FILT_10 4
#define OUT_HEIGHT_10 64
#define OUT_WIDTH_10 64
#define N_FILT_10 4
#define OUT_HEIGHT_56 65
#define OUT_WIDTH_56 65
#define N_CHAN_56 4
#define OUT_HEIGHT_14 32
#define OUT_WIDTH_14 32
#define N_FILT_14 4
#define N_INPUT_1_17 32
#define N_INPUT_2_17 32
#define N_INPUT_3_17 4
#define OUT_HEIGHT_14 32
#define OUT_WIDTH_14 32
#define N_FILT_14 4
#define OUT_HEIGHT_51 32
#define OUT_WIDTH_51 32
#define N_FILT_51 4
#define OUT_HEIGHT_14 32
#define OUT_WIDTH_14 32
#define N_FILT_14 4
#define OUT_HEIGHT_57 34
#define OUT_WIDTH_57 34
#define N_CHAN_57 4
#define OUT_HEIGHT_22 32
#define OUT_WIDTH_22 32
#define N_FILT_22 8
#define OUT_HEIGHT_22 32
#define OUT_WIDTH_22 32
#define N_FILT_22 8
#define OUT_HEIGHT_58 34
#define OUT_WIDTH_58 34
#define N_CHAN_58 8
#define OUT_HEIGHT_26 32
#define OUT_WIDTH_26 32
#define N_FILT_26 8
#define OUT_HEIGHT_26 32
#define OUT_WIDTH_26 32
#define N_FILT_26 8
#define OUT_HEIGHT_30 64
#define OUT_WIDTH_30 64
#define N_CHAN_30 8
#define OUT_HEIGHT_59 66
#define OUT_WIDTH_59 66
#define N_CHAN_59 8
#define OUT_HEIGHT_31 64
#define OUT_WIDTH_31 64
#define N_FILT_31 4
#define OUT_HEIGHT_31 64
#define OUT_WIDTH_31 64
#define N_FILT_31 4
#define OUT_HEIGHT_52 64
#define OUT_WIDTH_52 64
#define N_FILT_52 4
#define OUT_HEIGHT_31 64
#define OUT_WIDTH_31 64
#define N_FILT_31 4
#define OUT_HEIGHT_60 66
#define OUT_WIDTH_60 66
#define N_CHAN_60 4
#define OUT_HEIGHT_38 64
#define OUT_WIDTH_38 64
#define N_FILT_38 4
#define OUT_HEIGHT_38 64
#define OUT_WIDTH_38 64
#define N_FILT_38 4
#define OUT_HEIGHT_61 66
#define OUT_WIDTH_61 66
#define N_CHAN_61 4
#define OUT_HEIGHT_42 64
#define OUT_WIDTH_42 64
#define N_FILT_42 4
#define OUT_HEIGHT_42 64
#define OUT_WIDTH_42 64
#define N_FILT_42 4
#define OUT_HEIGHT_62 64
#define OUT_WIDTH_62 64
#define N_FILT_62 1
#define N_INPUT_1_48 1
#define OUT_HEIGHT_46 64
#define OUT_WIDTH_46 64
#define N_FILT_46 1

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> input_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 1*1> input2_t;
typedef ap_fixed<16,6,AP_RND,AP_SAT> model_default_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 1*1> layer50_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> emb1_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> emb1_bias_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 1*1> layer5_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 1*1> layer54_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer6_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> convd1_1_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> bias6_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer9_t;
typedef ap_fixed<18,8> relu_1_table_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer55_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer10_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> convd1_2_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> bias10_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer13_t;
typedef ap_fixed<18,8> relu_2_table_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer56_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer14_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> pool3_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> bias14_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> input17_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer18_t;
typedef ap_fixed<18,8> relu_3_table_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer51_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> emb4_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> emb4_bias_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer21_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer57_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 8*1> layer22_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> convb1_1_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> bias22_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 8*1> layer25_t;
typedef ap_fixed<18,8> relu_4_table_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 8*1> layer58_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 8*1> layer26_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> convb1_2_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> bias26_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 8*1> layer29_t;
typedef ap_fixed<18,8> relu_5_table_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 8*1> layer30_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 8*1> layer59_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer31_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> convu1_1_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> convu1_1_bias_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer34_t;
typedef ap_fixed<18,8> relu_6_table_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer52_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> emb5_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> emb5_bias_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer37_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer60_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer38_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> convu1_2_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> bias38_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer41_t;
typedef ap_fixed<18,8> relu_7_table_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer61_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer42_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> convu1_3_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> bias42_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 4*1> layer45_t;
typedef ap_fixed<18,8> relu_8_table_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 1*1> layer62_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> out_weight_t;
typedef ap_fixed<8,2,AP_RND,AP_SAT> out_bias_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 1*1> integer_input_t;
typedef nnet::array<ap_fixed<8,2,AP_RND,AP_SAT>, 1*1> result_t;
typedef ap_fixed<18,8> relu_9_table_t;

#endif
