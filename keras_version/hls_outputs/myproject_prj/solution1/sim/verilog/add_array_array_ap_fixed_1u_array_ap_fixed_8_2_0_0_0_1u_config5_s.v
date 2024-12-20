// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_s (
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
        data1_V_data_V_TDATA,
        data1_V_data_V_TVALID,
        data1_V_data_V_TREADY,
        data2_V_data_V_dout,
        data2_V_data_V_empty_n,
        data2_V_data_V_read,
        res_V_data_V_din,
        res_V_data_V_full_n,
        res_V_data_V_write
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
input  [7:0] data1_V_data_V_TDATA;
input   data1_V_data_V_TVALID;
output   data1_V_data_V_TREADY;
input  [7:0] data2_V_data_V_dout;
input   data2_V_data_V_empty_n;
output   data2_V_data_V_read;
output  [7:0] res_V_data_V_din;
input   res_V_data_V_full_n;
output   res_V_data_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg data1_V_data_V_TREADY;
reg data2_V_data_V_read;
reg res_V_data_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    data1_V_data_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln15_fu_120_p2;
reg    data2_V_data_V_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln15_reg_200;
reg    res_V_data_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln15_reg_200_pp0_iter1_reg;
reg   [9:0] i_0_reg_109;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] i_fu_126_p2;
reg  signed [7:0] tmp_data_0_V_reg_209;
wire   [7:0] out_data_data_V_fu_192_p3;
reg   [7:0] out_data_data_V_reg_215;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire  signed [7:0] sext_ln703_1_fu_135_p0;
wire  signed [8:0] sext_ln703_fu_132_p1;
wire  signed [8:0] sext_ln703_1_fu_135_p1;
wire   [8:0] add_ln1192_fu_139_p2;
wire  signed [7:0] add_ln703_fu_153_p0;
wire   [7:0] add_ln703_fu_153_p2;
wire   [0:0] tmp_4551_fu_145_p3;
wire   [0:0] tmp_4552_fu_158_p3;
wire   [0:0] xor_ln785_fu_166_p2;
wire   [0:0] and_ln785_fu_172_p2;
wire   [0:0] xor_ln384_fu_186_p2;
wire   [7:0] select_ln384_fu_178_p3;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_data1_V_data_V_U_apdone_blk;
wire   [7:0] data1_V_data_V_TDATA_int;
wire    data1_V_data_V_TVALID_int;
reg    data1_V_data_V_TREADY_int;
wire    regslice_both_data1_V_data_V_U_ack_in;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

regslice_both #(
    .DataWidth( 8 ))
regslice_both_data1_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(data1_V_data_V_TDATA),
    .vld_in(data1_V_data_V_TVALID),
    .ack_in(regslice_both_data1_V_data_V_U_ack_in),
    .data_out(data1_V_data_V_TDATA_int),
    .vld_out(data1_V_data_V_TVALID_int),
    .ack_out(data1_V_data_V_TREADY_int),
    .apdone_blk(regslice_both_data1_V_data_V_U_apdone_blk)
);

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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_fu_120_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_reg_109 <= i_fu_126_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_109 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15_reg_200 <= icmp_ln15_fu_120_p2;
        icmp_ln15_reg_200_pp0_iter1_reg <= icmp_ln15_reg_200;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_200 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_data_data_V_reg_215 <= out_data_data_V_fu_192_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_data_0_V_reg_209 <= data1_V_data_V_TDATA_int;
    end
end

always @ (*) begin
    if ((icmp_ln15_fu_120_p2 == 1'd1)) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln15_fu_120_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data1_V_data_V_TDATA_blk_n = data1_V_data_V_TVALID_int;
    end else begin
        data1_V_data_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((data1_V_data_V_TVALID == 1'b1) & (regslice_both_data1_V_data_V_U_ack_in == 1'b1))) begin
        data1_V_data_V_TREADY = 1'b1;
    end else begin
        data1_V_data_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_fu_120_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data1_V_data_V_TREADY_int = 1'b1;
    end else begin
        data1_V_data_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln15_reg_200 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data2_V_data_V_blk_n = data2_V_data_V_empty_n;
    end else begin
        data2_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_200 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data2_V_data_V_read = 1'b1;
    end else begin
        data2_V_data_V_read = 1'b0;
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
    if (((icmp_ln15_reg_200_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        res_V_data_V_blk_n = res_V_data_V_full_n;
    end else begin
        res_V_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_200_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        res_V_data_V_write = 1'b1;
    end else begin
        res_V_data_V_write = 1'b0;
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln15_fu_120_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln15_fu_120_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
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

assign add_ln1192_fu_139_p2 = ($signed(sext_ln703_fu_132_p1) + $signed(sext_ln703_1_fu_135_p1));

assign add_ln703_fu_153_p0 = data2_V_data_V_dout;

assign add_ln703_fu_153_p2 = ($signed(add_ln703_fu_153_p0) + $signed(tmp_data_0_V_reg_209));

assign and_ln785_fu_172_p2 = (xor_ln785_fu_166_p2 & tmp_4552_fu_158_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln15_reg_200_pp0_iter1_reg == 1'd0) & (res_V_data_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln15_reg_200 == 1'd0) & (data2_V_data_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln15_fu_120_p2 == 1'd0) & (data1_V_data_V_TVALID_int == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln15_reg_200_pp0_iter1_reg == 1'd0) & (res_V_data_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln15_reg_200 == 1'd0) & (data2_V_data_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln15_fu_120_p2 == 1'd0) & (data1_V_data_V_TVALID_int == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln15_reg_200_pp0_iter1_reg == 1'd0) & (res_V_data_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln15_reg_200 == 1'd0) & (data2_V_data_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((icmp_ln15_fu_120_p2 == 1'd0) & (data1_V_data_V_TVALID_int == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((icmp_ln15_fu_120_p2 == 1'd0) & (data1_V_data_V_TVALID_int == 1'b0));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln15_reg_200 == 1'd0) & (data2_V_data_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter2 = ((icmp_ln15_reg_200_pp0_iter1_reg == 1'd0) & (res_V_data_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign i_fu_126_p2 = (i_0_reg_109 + 10'd1);

assign icmp_ln15_fu_120_p2 = ((i_0_reg_109 == 10'd768) ? 1'b1 : 1'b0);

assign out_data_data_V_fu_192_p3 = ((xor_ln384_fu_186_p2[0:0] === 1'b1) ? select_ln384_fu_178_p3 : add_ln703_fu_153_p2);

assign res_V_data_V_din = out_data_data_V_reg_215;

assign select_ln384_fu_178_p3 = ((and_ln785_fu_172_p2[0:0] === 1'b1) ? 8'd127 : 8'd128);

assign sext_ln703_1_fu_135_p0 = data2_V_data_V_dout;

assign sext_ln703_1_fu_135_p1 = sext_ln703_1_fu_135_p0;

assign sext_ln703_fu_132_p1 = tmp_data_0_V_reg_209;

assign start_out = real_start;

assign tmp_4551_fu_145_p3 = add_ln1192_fu_139_p2[32'd8];

assign tmp_4552_fu_158_p3 = add_ln703_fu_153_p2[32'd7];

assign xor_ln384_fu_186_p2 = (tmp_4552_fu_158_p3 ^ tmp_4551_fu_145_p3);

assign xor_ln785_fu_166_p2 = (tmp_4551_fu_145_p3 ^ 1'd1);

endmodule //add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_s
