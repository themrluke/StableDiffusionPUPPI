#ifndef MYPROJECT_BRIDGE_H_
#define MYPROJECT_BRIDGE_H_

#include "firmware/myproject.h"
#include "firmware/nnet_utils/nnet_helpers.h"
#include <algorithm>
#include <map>

// hls-fpga-machine-learning insert bram

namespace nnet {
bool trace_enabled = false;
std::map<std::string, void *> *trace_outputs = NULL;
size_t trace_type_size = sizeof(double);
} // namespace nnet

extern "C" {

struct trace_data {
    const char *name;
    void *data;
};

void allocate_trace_storage(size_t element_size) {
    nnet::trace_enabled = true;
    nnet::trace_outputs = new std::map<std::string, void *>;
    nnet::trace_type_size = element_size;
}

void free_trace_storage() {
    for (std::map<std::string, void *>::iterator i = nnet::trace_outputs->begin(); i != nnet::trace_outputs->end(); i++) {
        void *ptr = i->second;
        free(ptr);
    }
    nnet::trace_outputs->clear();
    delete nnet::trace_outputs;
    nnet::trace_outputs = NULL;
    nnet::trace_enabled = false;
}

void collect_trace_output(struct trace_data *c_trace_outputs) {
    int ii = 0;
    for (std::map<std::string, void *>::iterator i = nnet::trace_outputs->begin(); i != nnet::trace_outputs->end(); i++) {
        c_trace_outputs[ii].name = i->first.c_str();
        c_trace_outputs[ii].data = i->second;
        ii++;
    }
}

// Wrapper of top level function for Python bridge
void myproject_float(
    float input_images[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2], float input_time[N_INPUT_1_48], float pos_encoding_main[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1], float pos_encoding_bottleneck[N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17],
    float input_time[N_INPUT_1_48], float layer49_out[OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46]
) {

    hls::stream<input2_t> input_images_ap("input_images");
    nnet::convert_data<float, input2_t, N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2>(input_images, input_images_ap);
    hls::stream<integer_input_t> input_time_ap("input_time");
    nnet::convert_data<float, integer_input_t, N_INPUT_1_48>(input_time, input_time_ap);
    hls::stream<input_t> pos_encoding_main_ap("pos_encoding_main");
    nnet::convert_data<float, input_t, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(pos_encoding_main, pos_encoding_main_ap);
    hls::stream<input17_t> pos_encoding_bottleneck_ap("pos_encoding_bottleneck");
    nnet::convert_data<float, input17_t, N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17>(pos_encoding_bottleneck, pos_encoding_bottleneck_ap);

    hls::stream<integer_input_t> input_time_ap("input_time");
    hls::stream<result_t> layer49_out_ap("layer49_out");

    myproject(input_images_ap,input_time_ap,pos_encoding_main_ap,pos_encoding_bottleneck_ap,input_time_ap,layer49_out_ap);

    nnet::convert_data<integer_input_t, float, N_INPUT_1_48>(input_time_ap, input_time);
    nnet::convert_data<result_t, float, OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46>(layer49_out_ap, layer49_out);
}

void myproject_double(
    double input_images[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2], double input_time[N_INPUT_1_48], double pos_encoding_main[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1], double pos_encoding_bottleneck[N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17],
    double input_time[N_INPUT_1_48], double layer49_out[OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46]
) {
    hls::stream<input2_t> input_images_ap("input_images");
    nnet::convert_data<double, input2_t, N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2>(input_images, input_images_ap);
    hls::stream<integer_input_t> input_time_ap("input_time");
    nnet::convert_data<double, integer_input_t, N_INPUT_1_48>(input_time, input_time_ap);
    hls::stream<input_t> pos_encoding_main_ap("pos_encoding_main");
    nnet::convert_data<double, input_t, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(pos_encoding_main, pos_encoding_main_ap);
    hls::stream<input17_t> pos_encoding_bottleneck_ap("pos_encoding_bottleneck");
    nnet::convert_data<double, input17_t, N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17>(pos_encoding_bottleneck, pos_encoding_bottleneck_ap);

    hls::stream<integer_input_t> input_time_ap("input_time");
    hls::stream<result_t> layer49_out_ap("layer49_out");

    myproject(input_images_ap,input_time_ap,pos_encoding_main_ap,pos_encoding_bottleneck_ap,input_time_ap,layer49_out_ap);

    nnet::convert_data<integer_input_t, double, N_INPUT_1_48>(input_time_ap, input_time);
    nnet::convert_data<result_t, double, OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46>(layer49_out_ap, layer49_out);
}
}

#endif
