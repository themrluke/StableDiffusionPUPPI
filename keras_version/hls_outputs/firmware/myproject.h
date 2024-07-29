#ifndef MYPROJECT_H_
#define MYPROJECT_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"

// Prototype of top level function for C-synthesis
void myproject(
    hls::stream<input2_t> &input_images, hls::stream<integer_input_t> &input_time, hls::stream<input_t> &pos_encoding_main, hls::stream<input17_t> &pos_encoding_bottleneck,
    hls::stream<integer_input_t> &input_time, hls::stream<result_t> &layer49_out
);

#endif
