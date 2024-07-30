// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern void AESL_WRAP_myproject (
hls::stream<struct nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > (&input_images),
hls::stream<struct nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 4 > > (&pos_enc_main),
hls::stream<struct nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 4 > > (&pos_enc_bottleneck),
hls::stream<struct nnet::array<ap_fixed<8, 2, (ap_q_mode) 0, (ap_o_mode)0, 0>, 1 > > (&layer48_out));
