// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_s_HH_
#define _zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_s : public sc_module {
    // Port declarations 58
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
    sc_in< sc_lv<8> > data_V_data_4_V_dout;
    sc_in< sc_logic > data_V_data_4_V_empty_n;
    sc_out< sc_logic > data_V_data_4_V_read;
    sc_in< sc_lv<8> > data_V_data_5_V_dout;
    sc_in< sc_logic > data_V_data_5_V_empty_n;
    sc_out< sc_logic > data_V_data_5_V_read;
    sc_in< sc_lv<8> > data_V_data_6_V_dout;
    sc_in< sc_logic > data_V_data_6_V_empty_n;
    sc_out< sc_logic > data_V_data_6_V_read;
    sc_in< sc_lv<8> > data_V_data_7_V_dout;
    sc_in< sc_logic > data_V_data_7_V_empty_n;
    sc_out< sc_logic > data_V_data_7_V_read;
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
    sc_out< sc_lv<8> > res_V_data_4_V_din;
    sc_in< sc_logic > res_V_data_4_V_full_n;
    sc_out< sc_logic > res_V_data_4_V_write;
    sc_out< sc_lv<8> > res_V_data_5_V_din;
    sc_in< sc_logic > res_V_data_5_V_full_n;
    sc_out< sc_logic > res_V_data_5_V_write;
    sc_out< sc_lv<8> > res_V_data_6_V_din;
    sc_in< sc_logic > res_V_data_6_V_full_n;
    sc_out< sc_logic > res_V_data_6_V_write;
    sc_out< sc_lv<8> > res_V_data_7_V_din;
    sc_in< sc_logic > res_V_data_7_V_full_n;
    sc_out< sc_logic > res_V_data_7_V_write;


    // Module declarations
    zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_s(sc_module_name name);
    SC_HAS_PROCESS(zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_s);

    ~zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > data_V_data_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln65_fu_408_p2;
    sc_signal< sc_logic > data_V_data_1_V_blk_n;
    sc_signal< sc_logic > data_V_data_2_V_blk_n;
    sc_signal< sc_logic > data_V_data_3_V_blk_n;
    sc_signal< sc_logic > data_V_data_4_V_blk_n;
    sc_signal< sc_logic > data_V_data_5_V_blk_n;
    sc_signal< sc_logic > data_V_data_6_V_blk_n;
    sc_signal< sc_logic > data_V_data_7_V_blk_n;
    sc_signal< sc_logic > res_V_data_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln53_fu_384_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln59_fu_396_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln77_fu_460_p2;
    sc_signal< sc_logic > res_V_data_1_V_blk_n;
    sc_signal< sc_logic > res_V_data_2_V_blk_n;
    sc_signal< sc_logic > res_V_data_3_V_blk_n;
    sc_signal< sc_logic > res_V_data_4_V_blk_n;
    sc_signal< sc_logic > res_V_data_5_V_blk_n;
    sc_signal< sc_logic > res_V_data_6_V_blk_n;
    sc_signal< sc_logic > res_V_data_7_V_blk_n;
    sc_signal< sc_lv<6> > j_fu_390_p2;
    sc_signal< sc_logic > io_acc_block_signal_op31;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<3> > i_fu_402_p2;
    sc_signal< sc_lv<3> > i_reg_483;
    sc_signal< sc_logic > io_acc_block_signal_op43;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<6> > j_4_fu_414_p2;
    sc_signal< sc_logic > io_acc_block_signal_op54;
    sc_signal< sc_logic > io_acc_block_signal_op63;
    sc_signal< sc_logic > io_acc_block_signal_op66;
    sc_signal< bool > ap_block_state4;
    sc_signal< sc_lv<6> > j_3_fu_466_p2;
    sc_signal< sc_logic > io_acc_block_signal_op75;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<6> > j_0_reg_340;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<3> > i1_0_reg_351;
    sc_signal< sc_lv<6> > j3_0_reg_362;
    sc_signal< sc_lv<6> > j6_0_reg_373;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<6> ap_const_lv6_22;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<6> ap_const_lv6_20;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_block_state3();
    void thread_ap_block_state4();
    void thread_ap_block_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_data_V_data_0_V_blk_n();
    void thread_data_V_data_0_V_read();
    void thread_data_V_data_1_V_blk_n();
    void thread_data_V_data_1_V_read();
    void thread_data_V_data_2_V_blk_n();
    void thread_data_V_data_2_V_read();
    void thread_data_V_data_3_V_blk_n();
    void thread_data_V_data_3_V_read();
    void thread_data_V_data_4_V_blk_n();
    void thread_data_V_data_4_V_read();
    void thread_data_V_data_5_V_blk_n();
    void thread_data_V_data_5_V_read();
    void thread_data_V_data_6_V_blk_n();
    void thread_data_V_data_6_V_read();
    void thread_data_V_data_7_V_blk_n();
    void thread_data_V_data_7_V_read();
    void thread_i_fu_402_p2();
    void thread_icmp_ln53_fu_384_p2();
    void thread_icmp_ln59_fu_396_p2();
    void thread_icmp_ln65_fu_408_p2();
    void thread_icmp_ln77_fu_460_p2();
    void thread_internal_ap_ready();
    void thread_io_acc_block_signal_op31();
    void thread_io_acc_block_signal_op43();
    void thread_io_acc_block_signal_op54();
    void thread_io_acc_block_signal_op63();
    void thread_io_acc_block_signal_op66();
    void thread_io_acc_block_signal_op75();
    void thread_j_3_fu_466_p2();
    void thread_j_4_fu_414_p2();
    void thread_j_fu_390_p2();
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
    void thread_res_V_data_4_V_blk_n();
    void thread_res_V_data_4_V_din();
    void thread_res_V_data_4_V_write();
    void thread_res_V_data_5_V_blk_n();
    void thread_res_V_data_5_V_din();
    void thread_res_V_data_5_V_write();
    void thread_res_V_data_6_V_blk_n();
    void thread_res_V_data_6_V_din();
    void thread_res_V_data_6_V_write();
    void thread_res_V_data_7_V_blk_n();
    void thread_res_V_data_7_V_din();
    void thread_res_V_data_7_V_write();
    void thread_start_out();
    void thread_start_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
