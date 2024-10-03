#ifndef MYPROJECT_H_
#define MYPROJECT_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"

// Prototype of top level function for C-synthesis
void myproject(
    input2_t input_images[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2], input_t pos_enc_main[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1], input17_t pos_enc_bottleneck[N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17],
    result_t layer48_out[OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46]
);

#endif
