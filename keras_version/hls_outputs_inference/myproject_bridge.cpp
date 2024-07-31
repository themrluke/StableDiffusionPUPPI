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
    nnet::trace_outputs->insert(std::pair<std::string, void *>("emb1", (void *) malloc(OUT_HEIGHT_49*OUT_WIDTH_49*N_FILT_49 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("add", (void *) malloc(N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("convd1_1", (void *) malloc(OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_1", (void *) malloc(OUT_HEIGHT_6*OUT_WIDTH_6*N_FILT_6 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("convd1_2", (void *) malloc(OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_2", (void *) malloc(OUT_HEIGHT_10*OUT_WIDTH_10*N_FILT_10 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("pool3", (void *) malloc(OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_3", (void *) malloc(OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("emb4", (void *) malloc(OUT_HEIGHT_50*OUT_WIDTH_50*N_FILT_50 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("add_1", (void *) malloc(OUT_HEIGHT_14*OUT_WIDTH_14*N_FILT_14 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("convb1_1", (void *) malloc(OUT_HEIGHT_22*OUT_WIDTH_22*N_FILT_22 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_4", (void *) malloc(OUT_HEIGHT_22*OUT_WIDTH_22*N_FILT_22 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("convb1_2", (void *) malloc(OUT_HEIGHT_26*OUT_WIDTH_26*N_FILT_26 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_5", (void *) malloc(OUT_HEIGHT_26*OUT_WIDTH_26*N_FILT_26 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("up1", (void *) malloc(OUT_HEIGHT_30*OUT_WIDTH_30*N_CHAN_30 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("convu1_1", (void *) malloc(OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_6", (void *) malloc(OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("emb5", (void *) malloc(OUT_HEIGHT_51*OUT_WIDTH_51*N_FILT_51 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("add_2", (void *) malloc(OUT_HEIGHT_31*OUT_WIDTH_31*N_FILT_31 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("convu1_2", (void *) malloc(OUT_HEIGHT_38*OUT_WIDTH_38*N_FILT_38 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_7", (void *) malloc(OUT_HEIGHT_38*OUT_WIDTH_38*N_FILT_38 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("convu1_3", (void *) malloc(OUT_HEIGHT_42*OUT_WIDTH_42*N_FILT_42 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_8", (void *) malloc(OUT_HEIGHT_42*OUT_WIDTH_42*N_FILT_42 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("out", (void *) malloc(OUT_HEIGHT_61*OUT_WIDTH_61*N_FILT_61 * element_size)));
    nnet::trace_outputs->insert(std::pair<std::string, void *>("relu_9", (void *) malloc(OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46 * element_size)));
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
    float input_images[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2], float pos_enc_main[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1], float pos_enc_bottleneck[N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17],
    float layer48_out[OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46]
) {

    hls::stream<input2_t> input_images_ap("input_images");
    nnet::convert_data<float, input2_t, N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2>(input_images, input_images_ap);
    hls::stream<input_t> pos_enc_main_ap("pos_enc_main");
    nnet::convert_data<float, input_t, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(pos_enc_main, pos_enc_main_ap);
    hls::stream<input17_t> pos_enc_bottleneck_ap("pos_enc_bottleneck");
    nnet::convert_data<float, input17_t, N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17>(pos_enc_bottleneck, pos_enc_bottleneck_ap);

    hls::stream<result_t> layer48_out_ap("layer48_out");

    myproject(input_images_ap,pos_enc_main_ap,pos_enc_bottleneck_ap,layer48_out_ap);

    nnet::convert_data<result_t, float, OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46>(layer48_out_ap, layer48_out);
}

void myproject_double(
    double input_images[N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2], double pos_enc_main[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1], double pos_enc_bottleneck[N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17],
    double layer48_out[OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46]
) {
    hls::stream<input2_t> input_images_ap("input_images");
    nnet::convert_data<double, input2_t, N_INPUT_1_2*N_INPUT_2_2*N_INPUT_3_2>(input_images, input_images_ap);
    hls::stream<input_t> pos_enc_main_ap("pos_enc_main");
    nnet::convert_data<double, input_t, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(pos_enc_main, pos_enc_main_ap);
    hls::stream<input17_t> pos_enc_bottleneck_ap("pos_enc_bottleneck");
    nnet::convert_data<double, input17_t, N_INPUT_1_17*N_INPUT_2_17*N_INPUT_3_17>(pos_enc_bottleneck, pos_enc_bottleneck_ap);

    hls::stream<result_t> layer48_out_ap("layer48_out");

    myproject(input_images_ap,pos_enc_main_ap,pos_enc_bottleneck_ap,layer48_out_ap);

    nnet::convert_data<result_t, double, OUT_HEIGHT_46*OUT_WIDTH_46*N_FILT_46>(layer48_out_ap, layer48_out);
}
}

#endif
