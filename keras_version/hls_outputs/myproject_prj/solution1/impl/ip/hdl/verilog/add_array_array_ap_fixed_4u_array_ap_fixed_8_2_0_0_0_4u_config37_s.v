// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        data1_V_data_0_V_dout,
        data1_V_data_0_V_empty_n,
        data1_V_data_0_V_read,
        data1_V_data_1_V_dout,
        data1_V_data_1_V_empty_n,
        data1_V_data_1_V_read,
        data1_V_data_2_V_dout,
        data1_V_data_2_V_empty_n,
        data1_V_data_2_V_read,
        data1_V_data_3_V_dout,
        data1_V_data_3_V_empty_n,
        data1_V_data_3_V_read,
        data2_V_data_0_V_dout,
        data2_V_data_0_V_empty_n,
        data2_V_data_0_V_read,
        data2_V_data_1_V_dout,
        data2_V_data_1_V_empty_n,
        data2_V_data_1_V_read,
        data2_V_data_2_V_dout,
        data2_V_data_2_V_empty_n,
        data2_V_data_2_V_read,
        data2_V_data_3_V_dout,
        data2_V_data_3_V_empty_n,
        data2_V_data_3_V_read,
        res_V_data_0_V_din,
        res_V_data_0_V_full_n,
        res_V_data_0_V_write,
        res_V_data_1_V_din,
        res_V_data_1_V_full_n,
        res_V_data_1_V_write,
        res_V_data_2_V_din,
        res_V_data_2_V_full_n,
        res_V_data_2_V_write,
        res_V_data_3_V_din,
        res_V_data_3_V_full_n,
        res_V_data_3_V_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] data1_V_data_0_V_dout;
input   data1_V_data_0_V_empty_n;
output   data1_V_data_0_V_read;
input  [7:0] data1_V_data_1_V_dout;
input   data1_V_data_1_V_empty_n;
output   data1_V_data_1_V_read;
input  [7:0] data1_V_data_2_V_dout;
input   data1_V_data_2_V_empty_n;
output   data1_V_data_2_V_read;
input  [7:0] data1_V_data_3_V_dout;
input   data1_V_data_3_V_empty_n;
output   data1_V_data_3_V_read;
input  [7:0] data2_V_data_0_V_dout;
input   data2_V_data_0_V_empty_n;
output   data2_V_data_0_V_read;
input  [7:0] data2_V_data_1_V_dout;
input   data2_V_data_1_V_empty_n;
output   data2_V_data_1_V_read;
input  [7:0] data2_V_data_2_V_dout;
input   data2_V_data_2_V_empty_n;
output   data2_V_data_2_V_read;
input  [7:0] data2_V_data_3_V_dout;
input   data2_V_data_3_V_empty_n;
output   data2_V_data_3_V_read;
output  [7:0] res_V_data_0_V_din;
input   res_V_data_0_V_full_n;
output   res_V_data_0_V_write;
output  [7:0] res_V_data_1_V_din;
input   res_V_data_1_V_full_n;
output   res_V_data_1_V_write;
output  [7:0] res_V_data_2_V_din;
input   res_V_data_2_V_full_n;
output   res_V_data_2_V_write;
output  [7:0] res_V_data_3_V_din;
input   res_V_data_3_V_full_n;
output   res_V_data_3_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg data1_V_data_0_V_read;
reg data1_V_data_1_V_read;
reg data1_V_data_2_V_read;
reg data1_V_data_3_V_read;
reg data2_V_data_0_V_read;
reg data2_V_data_1_V_read;
reg data2_V_data_2_V_read;
reg data2_V_data_3_V_read;
reg res_V_data_0_V_write;
reg res_V_data_1_V_write;
reg res_V_data_2_V_write;
reg res_V_data_3_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    data1_V_data_0_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln15_reg_677;
reg    data1_V_data_1_V_blk_n;
reg    data1_V_data_2_V_blk_n;
reg    data1_V_data_3_V_blk_n;
reg    data2_V_data_0_V_blk_n;
reg    data2_V_data_1_V_blk_n;
reg    data2_V_data_2_V_blk_n;
reg    data2_V_data_3_V_blk_n;
reg    res_V_data_0_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln15_reg_677_pp0_iter1_reg;
reg    res_V_data_1_V_blk_n;
reg    res_V_data_2_V_blk_n;
reg    res_V_data_3_V_blk_n;
reg   [9:0] i_0_reg_262;
wire   [0:0] icmp_ln15_fu_273_p2;
wire    ap_block_state2_pp0_stage0_iter0;
wire    io_acc_block_signal_op24;
wire    io_acc_block_signal_op29;
reg    ap_block_state3_pp0_stage0_iter1;
wire    io_acc_block_signal_op93;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] i_fu_279_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] tmp_data_0_V_45_fu_399_p3;
reg   [7:0] tmp_data_0_V_45_reg_686;
wire   [7:0] tmp_data_1_V_41_fu_489_p3;
reg   [7:0] tmp_data_1_V_41_reg_691;
wire   [7:0] tmp_data_2_V_41_fu_579_p3;
reg   [7:0] tmp_data_2_V_41_reg_696;
wire   [7:0] tmp_data_3_V_41_fu_669_p3;
reg   [7:0] tmp_data_3_V_41_reg_701;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire  signed [7:0] sext_ln703_fu_317_p0;
wire  signed [7:0] sext_ln703_2491_fu_321_p0;
wire  signed [8:0] sext_ln703_2491_fu_321_p1;
wire  signed [8:0] sext_ln703_fu_317_p1;
wire   [8:0] add_ln1192_fu_325_p2;
wire  signed [7:0] add_ln703_fu_339_p0;
wire  signed [7:0] add_ln703_fu_339_p1;
wire   [7:0] add_ln703_fu_339_p2;
wire   [0:0] tmp_4536_fu_345_p3;
wire   [0:0] tmp_4535_fu_331_p3;
wire   [0:0] xor_ln786_fu_353_p2;
wire   [0:0] xor_ln340_fu_371_p2;
wire   [0:0] xor_ln340_1844_fu_365_p2;
wire   [0:0] and_ln786_fu_359_p2;
wire   [0:0] or_ln340_fu_377_p2;
wire   [7:0] select_ln340_fu_383_p3;
wire   [7:0] select_ln388_fu_391_p3;
wire  signed [7:0] sext_ln703_2492_fu_407_p0;
wire  signed [7:0] sext_ln703_2493_fu_411_p0;
wire  signed [8:0] sext_ln703_2493_fu_411_p1;
wire  signed [8:0] sext_ln703_2492_fu_407_p1;
wire   [8:0] add_ln1192_1394_fu_415_p2;
wire  signed [7:0] add_ln703_1300_fu_429_p0;
wire  signed [7:0] add_ln703_1300_fu_429_p1;
wire   [7:0] add_ln703_1300_fu_429_p2;
wire   [0:0] tmp_4538_fu_435_p3;
wire   [0:0] tmp_4537_fu_421_p3;
wire   [0:0] xor_ln786_1_fu_443_p2;
wire   [0:0] xor_ln340_1_fu_461_p2;
wire   [0:0] xor_ln340_1845_fu_455_p2;
wire   [0:0] and_ln786_1322_fu_449_p2;
wire   [0:0] or_ln340_1341_fu_467_p2;
wire   [7:0] select_ln340_1_fu_473_p3;
wire   [7:0] select_ln388_1_fu_481_p3;
wire  signed [7:0] sext_ln703_2494_fu_497_p0;
wire  signed [7:0] sext_ln703_2495_fu_501_p0;
wire  signed [8:0] sext_ln703_2494_fu_497_p1;
wire  signed [8:0] sext_ln703_2495_fu_501_p1;
wire   [8:0] add_ln1192_1395_fu_505_p2;
wire  signed [7:0] add_ln703_1301_fu_519_p0;
wire  signed [7:0] add_ln703_1301_fu_519_p1;
wire   [7:0] add_ln703_1301_fu_519_p2;
wire   [0:0] tmp_4540_fu_525_p3;
wire   [0:0] tmp_4539_fu_511_p3;
wire   [0:0] xor_ln786_2_fu_533_p2;
wire   [0:0] xor_ln340_2_fu_551_p2;
wire   [0:0] xor_ln340_1846_fu_545_p2;
wire   [0:0] and_ln786_1323_fu_539_p2;
wire   [0:0] or_ln340_1342_fu_557_p2;
wire   [7:0] select_ln340_2_fu_563_p3;
wire   [7:0] select_ln388_2_fu_571_p3;
wire  signed [7:0] sext_ln703_2496_fu_587_p0;
wire  signed [7:0] sext_ln703_2497_fu_591_p0;
wire  signed [8:0] sext_ln703_2496_fu_587_p1;
wire  signed [8:0] sext_ln703_2497_fu_591_p1;
wire   [8:0] add_ln1192_1396_fu_595_p2;
wire  signed [7:0] add_ln703_1302_fu_609_p0;
wire  signed [7:0] add_ln703_1302_fu_609_p1;
wire   [7:0] add_ln703_1302_fu_609_p2;
wire   [0:0] tmp_4542_fu_615_p3;
wire   [0:0] tmp_4541_fu_601_p3;
wire   [0:0] xor_ln786_3_fu_623_p2;
wire   [0:0] xor_ln340_3_fu_641_p2;
wire   [0:0] xor_ln340_1847_fu_635_p2;
wire   [0:0] and_ln786_1324_fu_629_p2;
wire   [0:0] or_ln340_1343_fu_647_p2;
wire   [7:0] select_ln340_3_fu_653_p3;
wire   [7:0] select_ln388_3_fu_661_p3;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_fu_273_p2 == 1'd0))) begin
        i_0_reg_262 <= i_fu_279_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_262 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln15_reg_677 <= icmp_ln15_fu_273_p2;
        icmp_ln15_reg_677_pp0_iter1_reg <= icmp_ln15_reg_677;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        tmp_data_0_V_45_reg_686 <= tmp_data_0_V_45_fu_399_p3;
        tmp_data_1_V_41_reg_691 <= tmp_data_1_V_41_fu_489_p3;
        tmp_data_2_V_41_reg_696 <= tmp_data_2_V_41_fu_579_p3;
        tmp_data_3_V_41_reg_701 <= tmp_data_3_V_41_fu_669_p3;
    end
end

always @ (*) begin
    if ((icmp_ln15_fu_273_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_reg_677 == 1'd0))) begin
        data1_V_data_0_V_blk_n = data1_V_data_0_V_empty_n;
    end else begin
        data1_V_data_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        data1_V_data_0_V_read = 1'b1;
    end else begin
        data1_V_data_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_reg_677 == 1'd0))) begin
        data1_V_data_1_V_blk_n = data1_V_data_1_V_empty_n;
    end else begin
        data1_V_data_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        data1_V_data_1_V_read = 1'b1;
    end else begin
        data1_V_data_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_reg_677 == 1'd0))) begin
        data1_V_data_2_V_blk_n = data1_V_data_2_V_empty_n;
    end else begin
        data1_V_data_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        data1_V_data_2_V_read = 1'b1;
    end else begin
        data1_V_data_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_reg_677 == 1'd0))) begin
        data1_V_data_3_V_blk_n = data1_V_data_3_V_empty_n;
    end else begin
        data1_V_data_3_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        data1_V_data_3_V_read = 1'b1;
    end else begin
        data1_V_data_3_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_reg_677 == 1'd0))) begin
        data2_V_data_0_V_blk_n = data2_V_data_0_V_empty_n;
    end else begin
        data2_V_data_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        data2_V_data_0_V_read = 1'b1;
    end else begin
        data2_V_data_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_reg_677 == 1'd0))) begin
        data2_V_data_1_V_blk_n = data2_V_data_1_V_empty_n;
    end else begin
        data2_V_data_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        data2_V_data_1_V_read = 1'b1;
    end else begin
        data2_V_data_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_reg_677 == 1'd0))) begin
        data2_V_data_2_V_blk_n = data2_V_data_2_V_empty_n;
    end else begin
        data2_V_data_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        data2_V_data_2_V_read = 1'b1;
    end else begin
        data2_V_data_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln15_reg_677 == 1'd0))) begin
        data2_V_data_3_V_blk_n = data2_V_data_3_V_empty_n;
    end else begin
        data2_V_data_3_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677 == 1'd0))) begin
        data2_V_data_3_V_read = 1'b1;
    end else begin
        data2_V_data_3_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0))) begin
        res_V_data_0_V_blk_n = res_V_data_0_V_full_n;
    end else begin
        res_V_data_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0))) begin
        res_V_data_0_V_write = 1'b1;
    end else begin
        res_V_data_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0))) begin
        res_V_data_1_V_blk_n = res_V_data_1_V_full_n;
    end else begin
        res_V_data_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0))) begin
        res_V_data_1_V_write = 1'b1;
    end else begin
        res_V_data_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0))) begin
        res_V_data_2_V_blk_n = res_V_data_2_V_full_n;
    end else begin
        res_V_data_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0))) begin
        res_V_data_2_V_write = 1'b1;
    end else begin
        res_V_data_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0))) begin
        res_V_data_3_V_blk_n = res_V_data_3_V_full_n;
    end else begin
        res_V_data_3_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0))) begin
        res_V_data_3_V_write = 1'b1;
    end else begin
        res_V_data_3_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln15_fu_273_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln15_fu_273_p2 == 1'd1)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1192_1394_fu_415_p2 = ($signed(sext_ln703_2493_fu_411_p1) + $signed(sext_ln703_2492_fu_407_p1));

assign add_ln1192_1395_fu_505_p2 = ($signed(sext_ln703_2494_fu_497_p1) + $signed(sext_ln703_2495_fu_501_p1));

assign add_ln1192_1396_fu_595_p2 = ($signed(sext_ln703_2496_fu_587_p1) + $signed(sext_ln703_2497_fu_591_p1));

assign add_ln1192_fu_325_p2 = ($signed(sext_ln703_2491_fu_321_p1) + $signed(sext_ln703_fu_317_p1));

assign add_ln703_1300_fu_429_p0 = data1_V_data_1_V_dout;

assign add_ln703_1300_fu_429_p1 = data2_V_data_1_V_dout;

assign add_ln703_1300_fu_429_p2 = ($signed(add_ln703_1300_fu_429_p0) + $signed(add_ln703_1300_fu_429_p1));

assign add_ln703_1301_fu_519_p0 = data2_V_data_2_V_dout;

assign add_ln703_1301_fu_519_p1 = data1_V_data_2_V_dout;

assign add_ln703_1301_fu_519_p2 = ($signed(add_ln703_1301_fu_519_p0) + $signed(add_ln703_1301_fu_519_p1));

assign add_ln703_1302_fu_609_p0 = data2_V_data_3_V_dout;

assign add_ln703_1302_fu_609_p1 = data1_V_data_3_V_dout;

assign add_ln703_1302_fu_609_p2 = ($signed(add_ln703_1302_fu_609_p0) + $signed(add_ln703_1302_fu_609_p1));

assign add_ln703_fu_339_p0 = data1_V_data_0_V_dout;

assign add_ln703_fu_339_p1 = data2_V_data_0_V_dout;

assign add_ln703_fu_339_p2 = ($signed(add_ln703_fu_339_p0) + $signed(add_ln703_fu_339_p1));

assign and_ln786_1322_fu_449_p2 = (xor_ln786_1_fu_443_p2 & tmp_4537_fu_421_p3);

assign and_ln786_1323_fu_539_p2 = (xor_ln786_2_fu_533_p2 & tmp_4539_fu_511_p3);

assign and_ln786_1324_fu_629_p2 = (xor_ln786_3_fu_623_p2 & tmp_4541_fu_601_p3);

assign and_ln786_fu_359_p2 = (xor_ln786_fu_353_p2 & tmp_4535_fu_331_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op29 == 1'b0) & (icmp_ln15_reg_677 == 1'd0)) | ((io_acc_block_signal_op24 == 1'b0) & (icmp_ln15_reg_677 == 1'd0)))) | ((io_acc_block_signal_op93 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op29 == 1'b0) & (icmp_ln15_reg_677 == 1'd0)) | ((io_acc_block_signal_op24 == 1'b0) & (icmp_ln15_reg_677 == 1'd0)))) | ((io_acc_block_signal_op93 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (((io_acc_block_signal_op29 == 1'b0) & (icmp_ln15_reg_677 == 1'd0)) | ((io_acc_block_signal_op24 == 1'b0) & (icmp_ln15_reg_677 == 1'd0)))) | ((io_acc_block_signal_op93 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((io_acc_block_signal_op29 == 1'b0) & (icmp_ln15_reg_677 == 1'd0)) | ((io_acc_block_signal_op24 == 1'b0) & (icmp_ln15_reg_677 == 1'd0)));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((io_acc_block_signal_op93 == 1'b0) & (icmp_ln15_reg_677_pp0_iter1_reg == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign i_fu_279_p2 = (i_0_reg_262 + 10'd1);

assign icmp_ln15_fu_273_p2 = ((i_0_reg_262 == 10'd768) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op24 = (data1_V_data_3_V_empty_n & data1_V_data_2_V_empty_n & data1_V_data_1_V_empty_n & data1_V_data_0_V_empty_n);

assign io_acc_block_signal_op29 = (data2_V_data_3_V_empty_n & data2_V_data_2_V_empty_n & data2_V_data_1_V_empty_n & data2_V_data_0_V_empty_n);

assign io_acc_block_signal_op93 = (res_V_data_3_V_full_n & res_V_data_2_V_full_n & res_V_data_1_V_full_n & res_V_data_0_V_full_n);

assign or_ln340_1341_fu_467_p2 = (xor_ln340_1_fu_461_p2 | tmp_4538_fu_435_p3);

assign or_ln340_1342_fu_557_p2 = (xor_ln340_2_fu_551_p2 | tmp_4540_fu_525_p3);

assign or_ln340_1343_fu_647_p2 = (xor_ln340_3_fu_641_p2 | tmp_4542_fu_615_p3);

assign or_ln340_fu_377_p2 = (xor_ln340_fu_371_p2 | tmp_4536_fu_345_p3);

assign res_V_data_0_V_din = tmp_data_0_V_45_reg_686;

assign res_V_data_1_V_din = tmp_data_1_V_41_reg_691;

assign res_V_data_2_V_din = tmp_data_2_V_41_reg_696;

assign res_V_data_3_V_din = tmp_data_3_V_41_reg_701;

assign select_ln340_1_fu_473_p3 = ((xor_ln340_1845_fu_455_p2[0:0] === 1'b1) ? 8'd127 : add_ln703_1300_fu_429_p2);

assign select_ln340_2_fu_563_p3 = ((xor_ln340_1846_fu_545_p2[0:0] === 1'b1) ? 8'd127 : add_ln703_1301_fu_519_p2);

assign select_ln340_3_fu_653_p3 = ((xor_ln340_1847_fu_635_p2[0:0] === 1'b1) ? 8'd127 : add_ln703_1302_fu_609_p2);

assign select_ln340_fu_383_p3 = ((xor_ln340_1844_fu_365_p2[0:0] === 1'b1) ? 8'd127 : add_ln703_fu_339_p2);

assign select_ln388_1_fu_481_p3 = ((and_ln786_1322_fu_449_p2[0:0] === 1'b1) ? 8'd128 : add_ln703_1300_fu_429_p2);

assign select_ln388_2_fu_571_p3 = ((and_ln786_1323_fu_539_p2[0:0] === 1'b1) ? 8'd128 : add_ln703_1301_fu_519_p2);

assign select_ln388_3_fu_661_p3 = ((and_ln786_1324_fu_629_p2[0:0] === 1'b1) ? 8'd128 : add_ln703_1302_fu_609_p2);

assign select_ln388_fu_391_p3 = ((and_ln786_fu_359_p2[0:0] === 1'b1) ? 8'd128 : add_ln703_fu_339_p2);

assign sext_ln703_2491_fu_321_p0 = data2_V_data_0_V_dout;

assign sext_ln703_2491_fu_321_p1 = sext_ln703_2491_fu_321_p0;

assign sext_ln703_2492_fu_407_p0 = data1_V_data_1_V_dout;

assign sext_ln703_2492_fu_407_p1 = sext_ln703_2492_fu_407_p0;

assign sext_ln703_2493_fu_411_p0 = data2_V_data_1_V_dout;

assign sext_ln703_2493_fu_411_p1 = sext_ln703_2493_fu_411_p0;

assign sext_ln703_2494_fu_497_p0 = data1_V_data_2_V_dout;

assign sext_ln703_2494_fu_497_p1 = sext_ln703_2494_fu_497_p0;

assign sext_ln703_2495_fu_501_p0 = data2_V_data_2_V_dout;

assign sext_ln703_2495_fu_501_p1 = sext_ln703_2495_fu_501_p0;

assign sext_ln703_2496_fu_587_p0 = data1_V_data_3_V_dout;

assign sext_ln703_2496_fu_587_p1 = sext_ln703_2496_fu_587_p0;

assign sext_ln703_2497_fu_591_p0 = data2_V_data_3_V_dout;

assign sext_ln703_2497_fu_591_p1 = sext_ln703_2497_fu_591_p0;

assign sext_ln703_fu_317_p0 = data1_V_data_0_V_dout;

assign sext_ln703_fu_317_p1 = sext_ln703_fu_317_p0;

assign start_out = real_start;

assign tmp_4535_fu_331_p3 = add_ln1192_fu_325_p2[32'd8];

assign tmp_4536_fu_345_p3 = add_ln703_fu_339_p2[32'd7];

assign tmp_4537_fu_421_p3 = add_ln1192_1394_fu_415_p2[32'd8];

assign tmp_4538_fu_435_p3 = add_ln703_1300_fu_429_p2[32'd7];

assign tmp_4539_fu_511_p3 = add_ln1192_1395_fu_505_p2[32'd8];

assign tmp_4540_fu_525_p3 = add_ln703_1301_fu_519_p2[32'd7];

assign tmp_4541_fu_601_p3 = add_ln1192_1396_fu_595_p2[32'd8];

assign tmp_4542_fu_615_p3 = add_ln703_1302_fu_609_p2[32'd7];

assign tmp_data_0_V_45_fu_399_p3 = ((or_ln340_fu_377_p2[0:0] === 1'b1) ? select_ln340_fu_383_p3 : select_ln388_fu_391_p3);

assign tmp_data_1_V_41_fu_489_p3 = ((or_ln340_1341_fu_467_p2[0:0] === 1'b1) ? select_ln340_1_fu_473_p3 : select_ln388_1_fu_481_p3);

assign tmp_data_2_V_41_fu_579_p3 = ((or_ln340_1342_fu_557_p2[0:0] === 1'b1) ? select_ln340_2_fu_563_p3 : select_ln388_2_fu_571_p3);

assign tmp_data_3_V_41_fu_669_p3 = ((or_ln340_1343_fu_647_p2[0:0] === 1'b1) ? select_ln340_3_fu_653_p3 : select_ln388_3_fu_661_p3);

assign xor_ln340_1844_fu_365_p2 = (tmp_4536_fu_345_p3 ^ tmp_4535_fu_331_p3);

assign xor_ln340_1845_fu_455_p2 = (tmp_4538_fu_435_p3 ^ tmp_4537_fu_421_p3);

assign xor_ln340_1846_fu_545_p2 = (tmp_4540_fu_525_p3 ^ tmp_4539_fu_511_p3);

assign xor_ln340_1847_fu_635_p2 = (tmp_4542_fu_615_p3 ^ tmp_4541_fu_601_p3);

assign xor_ln340_1_fu_461_p2 = (tmp_4537_fu_421_p3 ^ 1'd1);

assign xor_ln340_2_fu_551_p2 = (tmp_4539_fu_511_p3 ^ 1'd1);

assign xor_ln340_3_fu_641_p2 = (tmp_4541_fu_601_p3 ^ 1'd1);

assign xor_ln340_fu_371_p2 = (tmp_4535_fu_331_p3 ^ 1'd1);

assign xor_ln786_1_fu_443_p2 = (tmp_4538_fu_435_p3 ^ 1'd1);

assign xor_ln786_2_fu_533_p2 = (tmp_4540_fu_525_p3 ^ 1'd1);

assign xor_ln786_3_fu_623_p2 = (tmp_4542_fu_615_p3 ^ 1'd1);

assign xor_ln786_fu_353_p2 = (tmp_4536_fu_345_p3 ^ 1'd1);

endmodule //add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_s