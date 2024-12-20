// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        res_stream_V_data_0_V_din,
        res_stream_V_data_0_V_full_n,
        res_stream_V_data_0_V_write,
        res_stream_V_data_1_V_din,
        res_stream_V_data_1_V_full_n,
        res_stream_V_data_1_V_write,
        res_stream_V_data_2_V_din,
        res_stream_V_data_2_V_full_n,
        res_stream_V_data_2_V_write,
        res_stream_V_data_3_V_din,
        res_stream_V_data_3_V_full_n,
        res_stream_V_data_3_V_write,
        ap_ce,
        in_elem_data_V_read,
        res_stream_V_data_0_V_blk_n,
        res_stream_V_data_1_V_blk_n,
        res_stream_V_data_2_V_blk_n,
        res_stream_V_data_3_V_blk_n
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] res_stream_V_data_0_V_din;
input   res_stream_V_data_0_V_full_n;
output   res_stream_V_data_0_V_write;
output  [7:0] res_stream_V_data_1_V_din;
input   res_stream_V_data_1_V_full_n;
output   res_stream_V_data_1_V_write;
output  [7:0] res_stream_V_data_2_V_din;
input   res_stream_V_data_2_V_full_n;
output   res_stream_V_data_2_V_write;
output  [7:0] res_stream_V_data_3_V_din;
input   res_stream_V_data_3_V_full_n;
output   res_stream_V_data_3_V_write;
input   ap_ce;
input  [7:0] in_elem_data_V_read;
output   res_stream_V_data_0_V_blk_n;
output   res_stream_V_data_1_V_blk_n;
output   res_stream_V_data_2_V_blk_n;
output   res_stream_V_data_3_V_blk_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg res_stream_V_data_0_V_write;
reg res_stream_V_data_1_V_write;
reg res_stream_V_data_2_V_write;
reg res_stream_V_data_3_V_write;
reg res_stream_V_data_0_V_blk_n;
reg res_stream_V_data_1_V_blk_n;
reg res_stream_V_data_2_V_blk_n;
reg res_stream_V_data_3_V_blk_n;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    io_acc_block_signal_op80;
reg   [0:0] and_ln289_6_reg_509;
reg   [0:0] and_ln289_6_reg_509_pp0_iter6_reg;
reg    ap_block_state8_pp0_stage0_iter7;
reg    ap_block_pp0_stage0_11001;
reg   [7:0] kernel_data_V_1632;
reg   [7:0] kernel_data_V_2633;
reg   [7:0] kernel_data_V_4635;
reg   [7:0] kernel_data_V_5636;
reg   [7:0] kernel_data_V_7638;
reg   [7:0] kernel_data_V_8;
reg   [31:0] sX_2;
reg   [31:0] sY_2;
reg   [31:0] pY_2;
reg   [31:0] pX_2;
reg   [7:0] kernel_data_V_6637_ret_reg_464;
reg   [7:0] kernel_data_V_3634_ret_reg_469;
reg   [7:0] kernel_data_V_0_ret_reg_474;
reg   [7:0] kernel_data_V_1632_ret_reg_479;
reg   [7:0] kernel_data_V_2633_ret_reg_484;
reg   [7:0] kernel_data_V_4635_ret_reg_489;
reg   [7:0] kernel_data_V_5636_ret_reg_494;
reg   [7:0] kernel_data_V_7638_ret_reg_499;
reg   [7:0] kernel_data_V_8_ret_reg_504;
wire   [0:0] and_ln289_6_fu_348_p2;
reg   [0:0] and_ln289_6_reg_509_pp0_iter2_reg;
reg   [0:0] and_ln289_6_reg_509_pp0_iter3_reg;
reg   [0:0] and_ln289_6_reg_509_pp0_iter4_reg;
reg   [0:0] and_ln289_6_reg_509_pp0_iter5_reg;
wire   [0:0] icmp_ln313_fu_354_p2;
reg   [0:0] icmp_ln313_reg_513;
wire   [31:0] select_ln323_fu_428_p3;
wire   [0:0] icmp_ln317_fu_404_p2;
reg   [7:0] res_out_0_V_reg_525;
reg   [7:0] res_out_1_V_reg_530;
reg   [7:0] res_out_2_V_reg_535;
reg   [7:0] res_out_3_V_reg_540;
reg    ap_block_pp0_stage0_subdone;
wire   [7:0] grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_0;
wire   [7:0] grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_1;
wire   [7:0] grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_2;
wire   [7:0] grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_3;
reg    grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call0;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call0;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call0;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call0;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call0;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call0;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call0;
reg    ap_block_state8_pp0_stage0_iter7_ignore_call0;
reg    ap_block_pp0_stage0_11001_ignoreCallOp46;
reg    call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_start;
wire    call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_done;
wire    call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_idle;
wire    call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_ready;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_0;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_1;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_2;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_3;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_4;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_5;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_6;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_7;
wire   [7:0] call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_8;
reg    call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_ce;
reg    ap_block_state1_pp0_stage0_iter0_ignore_call11;
wire    ap_block_state2_pp0_stage0_iter1_ignore_call11;
wire    ap_block_state3_pp0_stage0_iter2_ignore_call11;
wire    ap_block_state4_pp0_stage0_iter3_ignore_call11;
wire    ap_block_state5_pp0_stage0_iter4_ignore_call11;
wire    ap_block_state6_pp0_stage0_iter5_ignore_call11;
wire    ap_block_state7_pp0_stage0_iter6_ignore_call11;
reg    ap_block_state8_pp0_stage0_iter7_ignore_call11;
reg    ap_block_pp0_stage0_11001_ignoreCallOp16;
wire   [31:0] ap_phi_reg_pp0_iter0_storemerge_reg_134;
reg   [31:0] ap_phi_reg_pp0_iter1_storemerge_reg_134;
reg   [31:0] ap_phi_reg_pp0_iter2_storemerge_reg_134;
wire   [31:0] select_ln328_fu_378_p3;
reg   [31:0] ap_sig_allocacmp_sY_2_load;
wire   [31:0] add_ln321_fu_410_p2;
wire   [31:0] add_ln326_fu_360_p2;
reg    ap_block_pp0_stage0_01001;
wire   [30:0] tmp_fu_300_p4;
wire   [30:0] tmp_4505_fu_320_p4;
wire   [0:0] icmp_ln289_fu_280_p2;
wire   [0:0] icmp_ln289_7_fu_290_p2;
wire   [0:0] icmp_ln289_8_fu_310_p2;
wire   [0:0] icmp_ln289_9_fu_330_p2;
wire   [0:0] and_ln289_5_fu_342_p2;
wire   [0:0] and_ln289_fu_336_p2;
wire   [31:0] add_ln328_fu_372_p2;
wire   [31:0] add_ln323_fu_422_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to6;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_314;
reg    ap_condition_344;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 kernel_data_V_1632 = 8'd0;
#0 kernel_data_V_2633 = 8'd0;
#0 kernel_data_V_4635 = 8'd0;
#0 kernel_data_V_5636 = 8'd0;
#0 kernel_data_V_7638 = 8'd0;
#0 kernel_data_V_8 = 8'd0;
#0 sX_2 = 32'd0;
#0 sY_2 = 32'd0;
#0 pY_2 = 32'd0;
#0 pX_2 = 32'd0;
end

dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0 grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_0_V_read(kernel_data_V_0_ret_reg_474),
    .data_1_V_read(kernel_data_V_1632_ret_reg_479),
    .data_2_V_read(kernel_data_V_2633_ret_reg_484),
    .data_3_V_read(kernel_data_V_3634_ret_reg_469),
    .data_4_V_read(kernel_data_V_4635_ret_reg_489),
    .data_5_V_read(kernel_data_V_5636_ret_reg_494),
    .data_6_V_read(kernel_data_V_6637_ret_reg_464),
    .data_7_V_read(kernel_data_V_7638_ret_reg_499),
    .data_8_V_read(kernel_data_V_8_ret_reg_504),
    .ap_return_0(grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_0),
    .ap_return_1(grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_1),
    .ap_return_2(grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_2),
    .ap_return_3(grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_3),
    .ap_ce(grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_ce)
);

shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_start),
    .ap_done(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_done),
    .ap_idle(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_idle),
    .ap_ready(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_ready),
    .in_elem_data_V_read(in_elem_data_V_read),
    .kernel_window_1_V_read(kernel_data_V_1632),
    .kernel_window_2_V_read(kernel_data_V_2633),
    .kernel_window_4_V_read(kernel_data_V_4635),
    .kernel_window_5_V_read(kernel_data_V_5636),
    .kernel_window_7_V_read(kernel_data_V_7638),
    .kernel_window_8_V_read(kernel_data_V_8),
    .ap_return_0(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_0),
    .ap_return_1(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_1),
    .ap_return_2(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_2),
    .ap_return_3(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_3),
    .ap_return_4(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_4),
    .ap_return_5(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_5),
    .ap_return_6(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_6),
    .ap_return_7(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_7),
    .ap_return_8(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_8),
    .ap_ce(call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_ce)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_314)) begin
        if (((icmp_ln317_fu_404_p2 == 1'd1) & (icmp_ln313_fu_354_p2 == 1'd1))) begin
            ap_phi_reg_pp0_iter2_storemerge_reg_134 <= 32'd0;
        end else if (((icmp_ln313_fu_354_p2 == 1'd1) & (icmp_ln317_fu_404_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter2_storemerge_reg_134 <= select_ln323_fu_428_p3;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter2_storemerge_reg_134 <= ap_phi_reg_pp0_iter1_storemerge_reg_134;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_314)) begin
        if ((icmp_ln313_fu_354_p2 == 1'd1)) begin
            pX_2 <= 32'd0;
        end else if ((icmp_ln313_fu_354_p2 == 1'd0)) begin
            pX_2 <= add_ln326_fu_360_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_344)) begin
        if ((icmp_ln317_fu_404_p2 == 1'd1)) begin
            pY_2 <= 32'd0;
        end else if ((icmp_ln317_fu_404_p2 == 1'd0)) begin
            pY_2 <= add_ln321_fu_410_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_314)) begin
        if ((icmp_ln313_fu_354_p2 == 1'd1)) begin
            sX_2 <= 32'd0;
        end else if ((icmp_ln313_fu_354_p2 == 1'd0)) begin
            sX_2 <= select_ln328_fu_378_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln289_6_reg_509 <= and_ln289_6_fu_348_p2;
        icmp_ln313_reg_513 <= icmp_ln313_fu_354_p2;
        kernel_data_V_0_ret_reg_474 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_0;
        kernel_data_V_1632_ret_reg_479 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_3;
        kernel_data_V_2633_ret_reg_484 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_4;
        kernel_data_V_3634_ret_reg_469 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_1;
        kernel_data_V_4635_ret_reg_489 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_5;
        kernel_data_V_5636_ret_reg_494 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_6;
        kernel_data_V_6637_ret_reg_464 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_2;
        kernel_data_V_7638_ret_reg_499 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_7;
        kernel_data_V_8_ret_reg_504 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_8;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln289_6_reg_509_pp0_iter2_reg <= and_ln289_6_reg_509;
        and_ln289_6_reg_509_pp0_iter3_reg <= and_ln289_6_reg_509_pp0_iter2_reg;
        and_ln289_6_reg_509_pp0_iter4_reg <= and_ln289_6_reg_509_pp0_iter3_reg;
        and_ln289_6_reg_509_pp0_iter5_reg <= and_ln289_6_reg_509_pp0_iter4_reg;
        and_ln289_6_reg_509_pp0_iter6_reg <= and_ln289_6_reg_509_pp0_iter5_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_storemerge_reg_134 <= ap_phi_reg_pp0_iter0_storemerge_reg_134;
        kernel_data_V_1632 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_3;
        kernel_data_V_2633 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_4;
        kernel_data_V_4635 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_5;
        kernel_data_V_5636 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_6;
        kernel_data_V_7638 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_7;
        kernel_data_V_8 <= call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_return_8;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln289_6_reg_509_pp0_iter5_reg))) begin
        res_out_0_V_reg_525 <= grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_0;
        res_out_1_V_reg_530 <= grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_1;
        res_out_2_V_reg_535 <= grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_2;
        res_out_3_V_reg_540 <= grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_return_3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln313_reg_513 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sY_2 <= ap_phi_reg_pp0_iter2_storemerge_reg_134;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to6 = 1'b1;
    end else begin
        ap_idle_pp0_0to6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to6 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln313_reg_513 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_sY_2_load = ap_phi_reg_pp0_iter2_storemerge_reg_134;
    end else begin
        ap_sig_allocacmp_sY_2_load = sY_2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp16) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_ce = 1'b1;
    end else begin
        call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_start = 1'b1;
    end else begin
        call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158_ap_start = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp46) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_ce = 1'b1;
    end else begin
        grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        res_stream_V_data_0_V_blk_n = res_stream_V_data_0_V_full_n;
    end else begin
        res_stream_V_data_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        res_stream_V_data_0_V_write = 1'b1;
    end else begin
        res_stream_V_data_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        res_stream_V_data_1_V_blk_n = res_stream_V_data_1_V_full_n;
    end else begin
        res_stream_V_data_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        res_stream_V_data_1_V_write = 1'b1;
    end else begin
        res_stream_V_data_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        res_stream_V_data_2_V_blk_n = res_stream_V_data_2_V_full_n;
    end else begin
        res_stream_V_data_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        res_stream_V_data_2_V_write = 1'b1;
    end else begin
        res_stream_V_data_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        res_stream_V_data_3_V_blk_n = res_stream_V_data_3_V_full_n;
    end else begin
        res_stream_V_data_3_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        res_stream_V_data_3_V_write = 1'b1;
    end else begin
        res_stream_V_data_3_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln321_fu_410_p2 = (pY_2 + 32'd1);

assign add_ln323_fu_422_p2 = (ap_sig_allocacmp_sY_2_load + 32'd1);

assign add_ln326_fu_360_p2 = (pX_2 + 32'd1);

assign add_ln328_fu_372_p2 = (sX_2 + 32'd1);

assign and_ln289_5_fu_342_p2 = (icmp_ln289_9_fu_330_p2 & icmp_ln289_8_fu_310_p2);

assign and_ln289_6_fu_348_p2 = (and_ln289_fu_336_p2 & and_ln289_5_fu_342_p2);

assign and_ln289_fu_336_p2 = (icmp_ln289_fu_280_p2 & icmp_ln289_7_fu_290_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_start == 1'b0) & (ap_start == 1'b1)) | ((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (io_acc_block_signal_op80 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_start == 1'b0) & (ap_start == 1'b1)) | ((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (io_acc_block_signal_op80 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp16 = (((ap_start == 1'b0) & (ap_start == 1'b1)) | ((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (io_acc_block_signal_op80 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001_ignoreCallOp46 = (((ap_start == 1'b0) & (ap_start == 1'b1)) | ((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (io_acc_block_signal_op80 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == ap_ce) | ((ap_start == 1'b0) & (ap_start == 1'b1)) | ((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (io_acc_block_signal_op80 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call0 = (ap_start == 1'b0);
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0_ignore_call11 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1_ignore_call11 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2_ignore_call11 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3_ignore_call11 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4_ignore_call11 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5_ignore_call11 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6_ignore_call11 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state8_pp0_stage0_iter7 = ((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (io_acc_block_signal_op80 == 1'b0));
end

always @ (*) begin
    ap_block_state8_pp0_stage0_iter7_ignore_call0 = ((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (io_acc_block_signal_op80 == 1'b0));
end

always @ (*) begin
    ap_block_state8_pp0_stage0_iter7_ignore_call11 = ((1'd1 == and_ln289_6_reg_509_pp0_iter6_reg) & (io_acc_block_signal_op80 == 1'b0));
end

always @ (*) begin
    ap_condition_314 = ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_344 = ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln313_fu_354_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_storemerge_reg_134 = 'bx;

assign icmp_ln289_7_fu_290_p2 = ((ap_sig_allocacmp_sY_2_load == 32'd2) ? 1'b1 : 1'b0);

assign icmp_ln289_8_fu_310_p2 = (($signed(tmp_fu_300_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln289_9_fu_330_p2 = (($signed(tmp_4505_fu_320_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln289_fu_280_p2 = ((sX_2 == 32'd2) ? 1'b1 : 1'b0);

assign icmp_ln313_fu_354_p2 = ((pX_2 == 32'd65) ? 1'b1 : 1'b0);

assign icmp_ln317_fu_404_p2 = ((pY_2 == 32'd13) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op80 = (res_stream_V_data_3_V_full_n & res_stream_V_data_2_V_full_n & res_stream_V_data_1_V_full_n & res_stream_V_data_0_V_full_n);

assign res_stream_V_data_0_V_din = res_out_0_V_reg_525;

assign res_stream_V_data_1_V_din = res_out_1_V_reg_530;

assign res_stream_V_data_2_V_din = res_out_2_V_reg_535;

assign res_stream_V_data_3_V_din = res_out_3_V_reg_540;

assign select_ln323_fu_428_p3 = ((icmp_ln289_7_fu_290_p2[0:0] === 1'b1) ? 32'd2 : add_ln323_fu_422_p2);

assign select_ln328_fu_378_p3 = ((icmp_ln289_fu_280_p2[0:0] === 1'b1) ? 32'd2 : add_ln328_fu_372_p2);

assign tmp_4505_fu_320_p4 = {{pX_2[31:1]}};

assign tmp_fu_300_p4 = {{pY_2[31:1]}};

endmodule //compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s
