// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_s_HH_
#define _conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s.h"

namespace ap_rtl {

struct conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_s : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > data_V_data_0_V_dout;
    sc_in< sc_logic > data_V_data_0_V_empty_n;
    sc_out< sc_logic > data_V_data_0_V_read;
    sc_in< sc_lv<8> > data_V_data_1_V_dout;
    sc_in< sc_logic > data_V_data_1_V_empty_n;
    sc_out< sc_logic > data_V_data_1_V_read;
    sc_in< sc_lv<8> > data_V_data_2_V_dout;
    sc_in< sc_logic > data_V_data_2_V_empty_n;
    sc_out< sc_logic > data_V_data_2_V_read;
    sc_in< sc_lv<8> > data_V_data_3_V_dout;
    sc_in< sc_logic > data_V_data_3_V_empty_n;
    sc_out< sc_logic > data_V_data_3_V_read;
    sc_out< sc_lv<8> > res_V_data_0_V_din;
    sc_in< sc_logic > res_V_data_0_V_full_n;
    sc_out< sc_logic > res_V_data_0_V_write;
    sc_out< sc_lv<8> > res_V_data_1_V_din;
    sc_in< sc_logic > res_V_data_1_V_full_n;
    sc_out< sc_logic > res_V_data_1_V_write;
    sc_out< sc_lv<8> > res_V_data_2_V_din;
    sc_in< sc_logic > res_V_data_2_V_full_n;
    sc_out< sc_logic > res_V_data_2_V_write;
    sc_out< sc_lv<8> > res_V_data_3_V_din;
    sc_in< sc_logic > res_V_data_3_V_full_n;
    sc_out< sc_logic > res_V_data_3_V_write;


    // Module declarations
    conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_s(sc_module_name name);
    SC_HAS_PROCESS(conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_s);

    ~conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_s();

    sc_trace_file* mVcdFile;

    compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s* grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > data_V_data_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369;
    sc_signal< sc_logic > data_V_data_1_V_blk_n;
    sc_signal< sc_logic > data_V_data_2_V_blk_n;
    sc_signal< sc_logic > data_V_data_3_V_blk_n;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_0_V_blk_n;
    sc_signal< sc_logic > res_V_data_0_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter22;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter21_reg;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_1_V_blk_n;
    sc_signal< sc_logic > res_V_data_1_V_blk_n;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_2_V_blk_n;
    sc_signal< sc_logic > res_V_data_2_V_blk_n;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_3_V_blk_n;
    sc_signal< sc_logic > res_V_data_3_V_blk_n;
    sc_signal< sc_lv<13> > indvar_flatten_reg_238;
    sc_signal< sc_lv<1> > icmp_ln79_fu_337_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< sc_logic > io_acc_block_signal_op39;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter15;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter16;
    sc_signal< bool > ap_block_state19_pp0_stage0_iter17;
    sc_signal< bool > ap_block_state20_pp0_stage0_iter18;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter19;
    sc_signal< bool > ap_block_state22_pp0_stage0_iter20;
    sc_signal< bool > ap_block_state23_pp0_stage0_iter21;
    sc_signal< bool > ap_block_state24_pp0_stage0_iter22;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter6_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter7_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter8_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter9_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter10_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter11_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter12_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter13_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter14_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter15_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter16_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter17_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter18_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter19_reg;
    sc_signal< sc_lv<1> > icmp_ln79_reg_369_pp0_iter20_reg;
    sc_signal< sc_lv<13> > add_ln79_fu_343_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter12;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter13;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter14;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter15;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter16;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter17;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter18;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter19;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter20;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter21;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_ap_start;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_ap_done;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_ap_idle;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_ap_ready;
    sc_signal< sc_lv<8> > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_0_V_din;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_0_V_write;
    sc_signal< sc_lv<8> > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_1_V_din;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_1_V_write;
    sc_signal< sc_lv<8> > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_2_V_din;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_2_V_write;
    sc_signal< sc_lv<8> > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_3_V_din;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_res_stream_V_data_3_V_write;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_ap_ce;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0_ignore_call11;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1_ignore_call11;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2_ignore_call11;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3_ignore_call11;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4_ignore_call11;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5_ignore_call11;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6_ignore_call11;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7_ignore_call11;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8_ignore_call11;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter9_ignore_call11;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter10_ignore_call11;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter11_ignore_call11;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter12_ignore_call11;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter13_ignore_call11;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter14_ignore_call11;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter15_ignore_call11;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter16_ignore_call11;
    sc_signal< bool > ap_block_state19_pp0_stage0_iter17_ignore_call11;
    sc_signal< bool > ap_block_state20_pp0_stage0_iter18_ignore_call11;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter19_ignore_call11;
    sc_signal< bool > ap_block_state22_pp0_stage0_iter20_ignore_call11;
    sc_signal< bool > ap_block_state23_pp0_stage0_iter21_ignore_call11;
    sc_signal< bool > ap_block_state24_pp0_stage0_iter22_ignore_call11;
    sc_signal< bool > ap_block_pp0_stage0_11001_ignoreCallOp44;
    sc_signal< sc_logic > grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state25;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<13> ap_const_lv13_1104;
    static const sc_lv<13> ap_const_lv13_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln79_fu_343_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state25();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_11001_ignoreCallOp44();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state10_pp0_stage0_iter8_ignore_call11();
    void thread_ap_block_state11_pp0_stage0_iter9();
    void thread_ap_block_state11_pp0_stage0_iter9_ignore_call11();
    void thread_ap_block_state12_pp0_stage0_iter10();
    void thread_ap_block_state12_pp0_stage0_iter10_ignore_call11();
    void thread_ap_block_state13_pp0_stage0_iter11();
    void thread_ap_block_state13_pp0_stage0_iter11_ignore_call11();
    void thread_ap_block_state14_pp0_stage0_iter12();
    void thread_ap_block_state14_pp0_stage0_iter12_ignore_call11();
    void thread_ap_block_state15_pp0_stage0_iter13();
    void thread_ap_block_state15_pp0_stage0_iter13_ignore_call11();
    void thread_ap_block_state16_pp0_stage0_iter14();
    void thread_ap_block_state16_pp0_stage0_iter14_ignore_call11();
    void thread_ap_block_state17_pp0_stage0_iter15();
    void thread_ap_block_state17_pp0_stage0_iter15_ignore_call11();
    void thread_ap_block_state18_pp0_stage0_iter16();
    void thread_ap_block_state18_pp0_stage0_iter16_ignore_call11();
    void thread_ap_block_state19_pp0_stage0_iter17();
    void thread_ap_block_state19_pp0_stage0_iter17_ignore_call11();
    void thread_ap_block_state20_pp0_stage0_iter18();
    void thread_ap_block_state20_pp0_stage0_iter18_ignore_call11();
    void thread_ap_block_state21_pp0_stage0_iter19();
    void thread_ap_block_state21_pp0_stage0_iter19_ignore_call11();
    void thread_ap_block_state22_pp0_stage0_iter20();
    void thread_ap_block_state22_pp0_stage0_iter20_ignore_call11();
    void thread_ap_block_state23_pp0_stage0_iter21();
    void thread_ap_block_state23_pp0_stage0_iter21_ignore_call11();
    void thread_ap_block_state24_pp0_stage0_iter22();
    void thread_ap_block_state24_pp0_stage0_iter22_ignore_call11();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter0_ignore_call11();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter1_ignore_call11();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter2_ignore_call11();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state5_pp0_stage0_iter3_ignore_call11();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state6_pp0_stage0_iter4_ignore_call11();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state7_pp0_stage0_iter5_ignore_call11();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state8_pp0_stage0_iter6_ignore_call11();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_block_state9_pp0_stage0_iter7_ignore_call11();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_data_V_data_0_V_blk_n();
    void thread_data_V_data_0_V_read();
    void thread_data_V_data_1_V_blk_n();
    void thread_data_V_data_1_V_read();
    void thread_data_V_data_2_V_blk_n();
    void thread_data_V_data_2_V_read();
    void thread_data_V_data_3_V_blk_n();
    void thread_data_V_data_3_V_read();
    void thread_grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_ap_ce();
    void thread_grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249_ap_start();
    void thread_icmp_ln79_fu_337_p2();
    void thread_internal_ap_ready();
    void thread_io_acc_block_signal_op39();
    void thread_real_start();
    void thread_res_V_data_0_V_blk_n();
    void thread_res_V_data_0_V_din();
    void thread_res_V_data_0_V_write();
    void thread_res_V_data_1_V_blk_n();
    void thread_res_V_data_1_V_din();
    void thread_res_V_data_1_V_write();
    void thread_res_V_data_2_V_blk_n();
    void thread_res_V_data_2_V_din();
    void thread_res_V_data_2_V_write();
    void thread_res_V_data_3_V_blk_n();
    void thread_res_V_data_3_V_din();
    void thread_res_V_data_3_V_write();
    void thread_start_out();
    void thread_start_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif