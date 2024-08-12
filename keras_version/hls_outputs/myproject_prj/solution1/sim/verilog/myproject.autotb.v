// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      myproject
`define AUTOTB_DUT_INST AESL_inst_myproject
`define AUTOTB_TOP      apatb_myproject_top
`define AUTOTB_LAT_RESULT_FILE "myproject.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "myproject.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_myproject_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 1.39

`define AESL_DEPTH_input_images_V_data_0_V 1
`define AESL_DEPTH_pos_enc_main_V_data_0_V 1
`define AESL_DEPTH_pos_enc_main_V_data_1_V 1
`define AESL_DEPTH_pos_enc_main_V_data_2_V 1
`define AESL_DEPTH_pos_enc_main_V_data_3_V 1
`define AESL_DEPTH_pos_enc_bottleneck_V_data_0_V 1
`define AESL_DEPTH_pos_enc_bottleneck_V_data_1_V 1
`define AESL_DEPTH_pos_enc_bottleneck_V_data_2_V 1
`define AESL_DEPTH_pos_enc_bottleneck_V_data_3_V 1
`define AESL_DEPTH_layer48_out_V_data_0_V 1
`define AUTOTB_TVIN_input_images_V_data_0_V  "../tv/cdatafile/c.myproject.autotvin_input_images_V_data_0_V.dat"
`define AUTOTB_TVIN_pos_enc_main_V_data_0_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_main_V_data_0_V.dat"
`define AUTOTB_TVIN_pos_enc_main_V_data_1_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_main_V_data_1_V.dat"
`define AUTOTB_TVIN_pos_enc_main_V_data_2_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_main_V_data_2_V.dat"
`define AUTOTB_TVIN_pos_enc_main_V_data_3_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_main_V_data_3_V.dat"
`define AUTOTB_TVIN_pos_enc_bottleneck_V_data_0_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_bottleneck_V_data_0_V.dat"
`define AUTOTB_TVIN_pos_enc_bottleneck_V_data_1_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_bottleneck_V_data_1_V.dat"
`define AUTOTB_TVIN_pos_enc_bottleneck_V_data_2_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_bottleneck_V_data_2_V.dat"
`define AUTOTB_TVIN_pos_enc_bottleneck_V_data_3_V  "../tv/cdatafile/c.myproject.autotvin_pos_enc_bottleneck_V_data_3_V.dat"
`define AUTOTB_TVIN_layer48_out_V_data_0_V  "../tv/cdatafile/c.myproject.autotvin_layer48_out_V_data_0_V.dat"
`define AUTOTB_TVIN_input_images_V_data_0_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_input_images_V_data_0_V.dat"
`define AUTOTB_TVIN_pos_enc_main_V_data_0_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_pos_enc_main_V_data_0_V.dat"
`define AUTOTB_TVIN_pos_enc_main_V_data_1_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_pos_enc_main_V_data_1_V.dat"
`define AUTOTB_TVIN_pos_enc_main_V_data_2_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_pos_enc_main_V_data_2_V.dat"
`define AUTOTB_TVIN_pos_enc_main_V_data_3_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_pos_enc_main_V_data_3_V.dat"
`define AUTOTB_TVIN_pos_enc_bottleneck_V_data_0_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_pos_enc_bottleneck_V_data_0_V.dat"
`define AUTOTB_TVIN_pos_enc_bottleneck_V_data_1_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_pos_enc_bottleneck_V_data_1_V.dat"
`define AUTOTB_TVIN_pos_enc_bottleneck_V_data_2_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_pos_enc_bottleneck_V_data_2_V.dat"
`define AUTOTB_TVIN_pos_enc_bottleneck_V_data_3_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_pos_enc_bottleneck_V_data_3_V.dat"
`define AUTOTB_TVIN_layer48_out_V_data_0_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvin_layer48_out_V_data_0_V.dat"
`define AUTOTB_TVOUT_layer48_out_V_data_0_V  "../tv/cdatafile/c.myproject.autotvout_layer48_out_V_data_0_V.dat"
`define AUTOTB_TVOUT_layer48_out_V_data_0_V_out_wrapc  "../tv/rtldatafile/rtl.myproject.autotvout_layer48_out_V_data_0_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 5551;
parameter LENGTH_input_images_V_data_0_V = 768;
parameter LENGTH_pos_enc_main_V_data_0_V = 768;
parameter LENGTH_pos_enc_main_V_data_1_V = 768;
parameter LENGTH_pos_enc_main_V_data_2_V = 768;
parameter LENGTH_pos_enc_main_V_data_3_V = 768;
parameter LENGTH_pos_enc_bottleneck_V_data_0_V = 192;
parameter LENGTH_pos_enc_bottleneck_V_data_1_V = 192;
parameter LENGTH_pos_enc_bottleneck_V_data_2_V = 192;
parameter LENGTH_pos_enc_bottleneck_V_data_3_V = 192;
parameter LENGTH_layer48_out_V_data_0_V = 768;

task read_token;
    input integer fp;
    output reg [311 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [7 : 0] input_images_V_data_0_V_TDATA;
wire [7 : 0] pos_enc_main_V_data_0_V_TDATA;
wire [7 : 0] pos_enc_main_V_data_1_V_TDATA;
wire [7 : 0] pos_enc_main_V_data_2_V_TDATA;
wire [7 : 0] pos_enc_main_V_data_3_V_TDATA;
wire [7 : 0] pos_enc_bottleneck_V_data_0_V_TDATA;
wire [7 : 0] pos_enc_bottleneck_V_data_1_V_TDATA;
wire [7 : 0] pos_enc_bottleneck_V_data_2_V_TDATA;
wire [7 : 0] pos_enc_bottleneck_V_data_3_V_TDATA;
wire [7 : 0] layer48_out_V_data_0_V_TDATA;
wire  pos_enc_main_V_data_0_V_TVALID;
wire  pos_enc_main_V_data_0_V_TREADY;
wire  pos_enc_main_V_data_1_V_TVALID;
wire  pos_enc_main_V_data_1_V_TREADY;
wire  pos_enc_main_V_data_2_V_TVALID;
wire  pos_enc_main_V_data_2_V_TREADY;
wire  pos_enc_main_V_data_3_V_TVALID;
wire  pos_enc_main_V_data_3_V_TREADY;
wire ap_start;
wire  input_images_V_data_0_V_TVALID;
wire  input_images_V_data_0_V_TREADY;
wire  pos_enc_bottleneck_V_data_0_V_TVALID;
wire  pos_enc_bottleneck_V_data_0_V_TREADY;
wire  pos_enc_bottleneck_V_data_1_V_TVALID;
wire  pos_enc_bottleneck_V_data_1_V_TREADY;
wire  pos_enc_bottleneck_V_data_2_V_TVALID;
wire  pos_enc_bottleneck_V_data_2_V_TREADY;
wire  pos_enc_bottleneck_V_data_3_V_TVALID;
wire  pos_enc_bottleneck_V_data_3_V_TREADY;
wire  layer48_out_V_data_0_V_TVALID;
wire  layer48_out_V_data_0_V_TREADY;
wire ap_done;
wire ap_ready;
wire ap_idle;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .input_images_V_data_0_V_TDATA(input_images_V_data_0_V_TDATA),
    .pos_enc_main_V_data_0_V_TDATA(pos_enc_main_V_data_0_V_TDATA),
    .pos_enc_main_V_data_1_V_TDATA(pos_enc_main_V_data_1_V_TDATA),
    .pos_enc_main_V_data_2_V_TDATA(pos_enc_main_V_data_2_V_TDATA),
    .pos_enc_main_V_data_3_V_TDATA(pos_enc_main_V_data_3_V_TDATA),
    .pos_enc_bottleneck_V_data_0_V_TDATA(pos_enc_bottleneck_V_data_0_V_TDATA),
    .pos_enc_bottleneck_V_data_1_V_TDATA(pos_enc_bottleneck_V_data_1_V_TDATA),
    .pos_enc_bottleneck_V_data_2_V_TDATA(pos_enc_bottleneck_V_data_2_V_TDATA),
    .pos_enc_bottleneck_V_data_3_V_TDATA(pos_enc_bottleneck_V_data_3_V_TDATA),
    .layer48_out_V_data_0_V_TDATA(layer48_out_V_data_0_V_TDATA),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .pos_enc_main_V_data_0_V_TVALID(pos_enc_main_V_data_0_V_TVALID),
    .pos_enc_main_V_data_0_V_TREADY(pos_enc_main_V_data_0_V_TREADY),
    .pos_enc_main_V_data_1_V_TVALID(pos_enc_main_V_data_1_V_TVALID),
    .pos_enc_main_V_data_1_V_TREADY(pos_enc_main_V_data_1_V_TREADY),
    .pos_enc_main_V_data_2_V_TVALID(pos_enc_main_V_data_2_V_TVALID),
    .pos_enc_main_V_data_2_V_TREADY(pos_enc_main_V_data_2_V_TREADY),
    .pos_enc_main_V_data_3_V_TVALID(pos_enc_main_V_data_3_V_TVALID),
    .pos_enc_main_V_data_3_V_TREADY(pos_enc_main_V_data_3_V_TREADY),
    .ap_start(ap_start),
    .input_images_V_data_0_V_TVALID(input_images_V_data_0_V_TVALID),
    .input_images_V_data_0_V_TREADY(input_images_V_data_0_V_TREADY),
    .pos_enc_bottleneck_V_data_0_V_TVALID(pos_enc_bottleneck_V_data_0_V_TVALID),
    .pos_enc_bottleneck_V_data_0_V_TREADY(pos_enc_bottleneck_V_data_0_V_TREADY),
    .pos_enc_bottleneck_V_data_1_V_TVALID(pos_enc_bottleneck_V_data_1_V_TVALID),
    .pos_enc_bottleneck_V_data_1_V_TREADY(pos_enc_bottleneck_V_data_1_V_TREADY),
    .pos_enc_bottleneck_V_data_2_V_TVALID(pos_enc_bottleneck_V_data_2_V_TVALID),
    .pos_enc_bottleneck_V_data_2_V_TREADY(pos_enc_bottleneck_V_data_2_V_TREADY),
    .pos_enc_bottleneck_V_data_3_V_TVALID(pos_enc_bottleneck_V_data_3_V_TVALID),
    .pos_enc_bottleneck_V_data_3_V_TREADY(pos_enc_bottleneck_V_data_3_V_TREADY),
    .layer48_out_V_data_0_V_TVALID(layer48_out_V_data_0_V_TVALID),
    .layer48_out_V_data_0_V_TREADY(layer48_out_V_data_0_V_TREADY),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_ready = ap_ready;
assign AESL_idle = ap_idle;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end










reg [31:0] ap_c_n_tvin_trans_num_input_images_V_data_0_V;

reg input_images_V_data_0_V_ready_reg; // for self-sync

wire input_images_V_data_0_V_ready;
wire input_images_V_data_0_V_done;
wire [31:0] input_images_V_data_0_V_transaction;
wire axi_s_input_images_V_data_0_V_TVALID;
wire axi_s_input_images_V_data_0_V_TREADY;

AESL_axi_s_input_images_V_data_0_V AESL_AXI_S_input_images_V_data_0_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_input_images_V_data_0_V_TDATA(input_images_V_data_0_V_TDATA),
    .TRAN_input_images_V_data_0_V_TVALID(axi_s_input_images_V_data_0_V_TVALID),
    .TRAN_input_images_V_data_0_V_TREADY(axi_s_input_images_V_data_0_V_TREADY),
    .ready(input_images_V_data_0_V_ready),
    .done(input_images_V_data_0_V_done),
    .transaction(input_images_V_data_0_V_transaction));

assign input_images_V_data_0_V_ready = input_images_V_data_0_V_ready_reg | ready_initial;
assign input_images_V_data_0_V_done = 0;

assign input_images_V_data_0_V_TVALID = axi_s_input_images_V_data_0_V_TVALID;

assign axi_s_input_images_V_data_0_V_TREADY = input_images_V_data_0_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V;

reg pos_enc_main_V_data_0_V_ready_reg; // for self-sync

wire pos_enc_main_V_data_0_V_ready;
wire pos_enc_main_V_data_0_V_done;
wire [31:0] pos_enc_main_V_data_0_V_transaction;
wire axi_s_pos_enc_main_V_data_0_V_TVALID;
wire axi_s_pos_enc_main_V_data_0_V_TREADY;

AESL_axi_s_pos_enc_main_V_data_0_V AESL_AXI_S_pos_enc_main_V_data_0_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_pos_enc_main_V_data_0_V_TDATA(pos_enc_main_V_data_0_V_TDATA),
    .TRAN_pos_enc_main_V_data_0_V_TVALID(axi_s_pos_enc_main_V_data_0_V_TVALID),
    .TRAN_pos_enc_main_V_data_0_V_TREADY(axi_s_pos_enc_main_V_data_0_V_TREADY),
    .ready(pos_enc_main_V_data_0_V_ready),
    .done(pos_enc_main_V_data_0_V_done),
    .transaction(pos_enc_main_V_data_0_V_transaction));

assign pos_enc_main_V_data_0_V_ready = pos_enc_main_V_data_0_V_ready_reg | ready_initial;
assign pos_enc_main_V_data_0_V_done = 0;

assign pos_enc_main_V_data_0_V_TVALID = axi_s_pos_enc_main_V_data_0_V_TVALID;

assign axi_s_pos_enc_main_V_data_0_V_TREADY = pos_enc_main_V_data_0_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V;

reg pos_enc_main_V_data_1_V_ready_reg; // for self-sync

wire pos_enc_main_V_data_1_V_ready;
wire pos_enc_main_V_data_1_V_done;
wire [31:0] pos_enc_main_V_data_1_V_transaction;
wire axi_s_pos_enc_main_V_data_1_V_TVALID;
wire axi_s_pos_enc_main_V_data_1_V_TREADY;

AESL_axi_s_pos_enc_main_V_data_1_V AESL_AXI_S_pos_enc_main_V_data_1_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_pos_enc_main_V_data_1_V_TDATA(pos_enc_main_V_data_1_V_TDATA),
    .TRAN_pos_enc_main_V_data_1_V_TVALID(axi_s_pos_enc_main_V_data_1_V_TVALID),
    .TRAN_pos_enc_main_V_data_1_V_TREADY(axi_s_pos_enc_main_V_data_1_V_TREADY),
    .ready(pos_enc_main_V_data_1_V_ready),
    .done(pos_enc_main_V_data_1_V_done),
    .transaction(pos_enc_main_V_data_1_V_transaction));

assign pos_enc_main_V_data_1_V_ready = pos_enc_main_V_data_1_V_ready_reg | ready_initial;
assign pos_enc_main_V_data_1_V_done = 0;

assign pos_enc_main_V_data_1_V_TVALID = axi_s_pos_enc_main_V_data_1_V_TVALID;

assign axi_s_pos_enc_main_V_data_1_V_TREADY = pos_enc_main_V_data_1_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V;

reg pos_enc_main_V_data_2_V_ready_reg; // for self-sync

wire pos_enc_main_V_data_2_V_ready;
wire pos_enc_main_V_data_2_V_done;
wire [31:0] pos_enc_main_V_data_2_V_transaction;
wire axi_s_pos_enc_main_V_data_2_V_TVALID;
wire axi_s_pos_enc_main_V_data_2_V_TREADY;

AESL_axi_s_pos_enc_main_V_data_2_V AESL_AXI_S_pos_enc_main_V_data_2_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_pos_enc_main_V_data_2_V_TDATA(pos_enc_main_V_data_2_V_TDATA),
    .TRAN_pos_enc_main_V_data_2_V_TVALID(axi_s_pos_enc_main_V_data_2_V_TVALID),
    .TRAN_pos_enc_main_V_data_2_V_TREADY(axi_s_pos_enc_main_V_data_2_V_TREADY),
    .ready(pos_enc_main_V_data_2_V_ready),
    .done(pos_enc_main_V_data_2_V_done),
    .transaction(pos_enc_main_V_data_2_V_transaction));

assign pos_enc_main_V_data_2_V_ready = pos_enc_main_V_data_2_V_ready_reg | ready_initial;
assign pos_enc_main_V_data_2_V_done = 0;

assign pos_enc_main_V_data_2_V_TVALID = axi_s_pos_enc_main_V_data_2_V_TVALID;

assign axi_s_pos_enc_main_V_data_2_V_TREADY = pos_enc_main_V_data_2_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V;

reg pos_enc_main_V_data_3_V_ready_reg; // for self-sync

wire pos_enc_main_V_data_3_V_ready;
wire pos_enc_main_V_data_3_V_done;
wire [31:0] pos_enc_main_V_data_3_V_transaction;
wire axi_s_pos_enc_main_V_data_3_V_TVALID;
wire axi_s_pos_enc_main_V_data_3_V_TREADY;

AESL_axi_s_pos_enc_main_V_data_3_V AESL_AXI_S_pos_enc_main_V_data_3_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_pos_enc_main_V_data_3_V_TDATA(pos_enc_main_V_data_3_V_TDATA),
    .TRAN_pos_enc_main_V_data_3_V_TVALID(axi_s_pos_enc_main_V_data_3_V_TVALID),
    .TRAN_pos_enc_main_V_data_3_V_TREADY(axi_s_pos_enc_main_V_data_3_V_TREADY),
    .ready(pos_enc_main_V_data_3_V_ready),
    .done(pos_enc_main_V_data_3_V_done),
    .transaction(pos_enc_main_V_data_3_V_transaction));

assign pos_enc_main_V_data_3_V_ready = pos_enc_main_V_data_3_V_ready_reg | ready_initial;
assign pos_enc_main_V_data_3_V_done = 0;

assign pos_enc_main_V_data_3_V_TVALID = axi_s_pos_enc_main_V_data_3_V_TVALID;

assign axi_s_pos_enc_main_V_data_3_V_TREADY = pos_enc_main_V_data_3_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V;

reg pos_enc_bottleneck_V_data_0_V_ready_reg; // for self-sync

wire pos_enc_bottleneck_V_data_0_V_ready;
wire pos_enc_bottleneck_V_data_0_V_done;
wire [31:0] pos_enc_bottleneck_V_data_0_V_transaction;
wire axi_s_pos_enc_bottleneck_V_data_0_V_TVALID;
wire axi_s_pos_enc_bottleneck_V_data_0_V_TREADY;

AESL_axi_s_pos_enc_bottleneck_V_data_0_V AESL_AXI_S_pos_enc_bottleneck_V_data_0_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_pos_enc_bottleneck_V_data_0_V_TDATA(pos_enc_bottleneck_V_data_0_V_TDATA),
    .TRAN_pos_enc_bottleneck_V_data_0_V_TVALID(axi_s_pos_enc_bottleneck_V_data_0_V_TVALID),
    .TRAN_pos_enc_bottleneck_V_data_0_V_TREADY(axi_s_pos_enc_bottleneck_V_data_0_V_TREADY),
    .ready(pos_enc_bottleneck_V_data_0_V_ready),
    .done(pos_enc_bottleneck_V_data_0_V_done),
    .transaction(pos_enc_bottleneck_V_data_0_V_transaction));

assign pos_enc_bottleneck_V_data_0_V_ready = pos_enc_bottleneck_V_data_0_V_ready_reg | ready_initial;
assign pos_enc_bottleneck_V_data_0_V_done = 0;

assign pos_enc_bottleneck_V_data_0_V_TVALID = axi_s_pos_enc_bottleneck_V_data_0_V_TVALID;

assign axi_s_pos_enc_bottleneck_V_data_0_V_TREADY = pos_enc_bottleneck_V_data_0_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V;

reg pos_enc_bottleneck_V_data_1_V_ready_reg; // for self-sync

wire pos_enc_bottleneck_V_data_1_V_ready;
wire pos_enc_bottleneck_V_data_1_V_done;
wire [31:0] pos_enc_bottleneck_V_data_1_V_transaction;
wire axi_s_pos_enc_bottleneck_V_data_1_V_TVALID;
wire axi_s_pos_enc_bottleneck_V_data_1_V_TREADY;

AESL_axi_s_pos_enc_bottleneck_V_data_1_V AESL_AXI_S_pos_enc_bottleneck_V_data_1_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_pos_enc_bottleneck_V_data_1_V_TDATA(pos_enc_bottleneck_V_data_1_V_TDATA),
    .TRAN_pos_enc_bottleneck_V_data_1_V_TVALID(axi_s_pos_enc_bottleneck_V_data_1_V_TVALID),
    .TRAN_pos_enc_bottleneck_V_data_1_V_TREADY(axi_s_pos_enc_bottleneck_V_data_1_V_TREADY),
    .ready(pos_enc_bottleneck_V_data_1_V_ready),
    .done(pos_enc_bottleneck_V_data_1_V_done),
    .transaction(pos_enc_bottleneck_V_data_1_V_transaction));

assign pos_enc_bottleneck_V_data_1_V_ready = pos_enc_bottleneck_V_data_1_V_ready_reg | ready_initial;
assign pos_enc_bottleneck_V_data_1_V_done = 0;

assign pos_enc_bottleneck_V_data_1_V_TVALID = axi_s_pos_enc_bottleneck_V_data_1_V_TVALID;

assign axi_s_pos_enc_bottleneck_V_data_1_V_TREADY = pos_enc_bottleneck_V_data_1_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V;

reg pos_enc_bottleneck_V_data_2_V_ready_reg; // for self-sync

wire pos_enc_bottleneck_V_data_2_V_ready;
wire pos_enc_bottleneck_V_data_2_V_done;
wire [31:0] pos_enc_bottleneck_V_data_2_V_transaction;
wire axi_s_pos_enc_bottleneck_V_data_2_V_TVALID;
wire axi_s_pos_enc_bottleneck_V_data_2_V_TREADY;

AESL_axi_s_pos_enc_bottleneck_V_data_2_V AESL_AXI_S_pos_enc_bottleneck_V_data_2_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_pos_enc_bottleneck_V_data_2_V_TDATA(pos_enc_bottleneck_V_data_2_V_TDATA),
    .TRAN_pos_enc_bottleneck_V_data_2_V_TVALID(axi_s_pos_enc_bottleneck_V_data_2_V_TVALID),
    .TRAN_pos_enc_bottleneck_V_data_2_V_TREADY(axi_s_pos_enc_bottleneck_V_data_2_V_TREADY),
    .ready(pos_enc_bottleneck_V_data_2_V_ready),
    .done(pos_enc_bottleneck_V_data_2_V_done),
    .transaction(pos_enc_bottleneck_V_data_2_V_transaction));

assign pos_enc_bottleneck_V_data_2_V_ready = pos_enc_bottleneck_V_data_2_V_ready_reg | ready_initial;
assign pos_enc_bottleneck_V_data_2_V_done = 0;

assign pos_enc_bottleneck_V_data_2_V_TVALID = axi_s_pos_enc_bottleneck_V_data_2_V_TVALID;

assign axi_s_pos_enc_bottleneck_V_data_2_V_TREADY = pos_enc_bottleneck_V_data_2_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V;

reg pos_enc_bottleneck_V_data_3_V_ready_reg; // for self-sync

wire pos_enc_bottleneck_V_data_3_V_ready;
wire pos_enc_bottleneck_V_data_3_V_done;
wire [31:0] pos_enc_bottleneck_V_data_3_V_transaction;
wire axi_s_pos_enc_bottleneck_V_data_3_V_TVALID;
wire axi_s_pos_enc_bottleneck_V_data_3_V_TREADY;

AESL_axi_s_pos_enc_bottleneck_V_data_3_V AESL_AXI_S_pos_enc_bottleneck_V_data_3_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_pos_enc_bottleneck_V_data_3_V_TDATA(pos_enc_bottleneck_V_data_3_V_TDATA),
    .TRAN_pos_enc_bottleneck_V_data_3_V_TVALID(axi_s_pos_enc_bottleneck_V_data_3_V_TVALID),
    .TRAN_pos_enc_bottleneck_V_data_3_V_TREADY(axi_s_pos_enc_bottleneck_V_data_3_V_TREADY),
    .ready(pos_enc_bottleneck_V_data_3_V_ready),
    .done(pos_enc_bottleneck_V_data_3_V_done),
    .transaction(pos_enc_bottleneck_V_data_3_V_transaction));

assign pos_enc_bottleneck_V_data_3_V_ready = pos_enc_bottleneck_V_data_3_V_ready_reg | ready_initial;
assign pos_enc_bottleneck_V_data_3_V_done = 0;

assign pos_enc_bottleneck_V_data_3_V_TVALID = axi_s_pos_enc_bottleneck_V_data_3_V_TVALID;

assign axi_s_pos_enc_bottleneck_V_data_3_V_TREADY = pos_enc_bottleneck_V_data_3_V_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_layer48_out_V_data_0_V;

reg layer48_out_V_data_0_V_ready_reg; // for self-sync

wire layer48_out_V_data_0_V_ready;
wire layer48_out_V_data_0_V_done;
wire [31:0] layer48_out_V_data_0_V_transaction;
wire axi_s_layer48_out_V_data_0_V_TVALID;
wire axi_s_layer48_out_V_data_0_V_TREADY;

AESL_axi_s_layer48_out_V_data_0_V AESL_AXI_S_layer48_out_V_data_0_V(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_layer48_out_V_data_0_V_TDATA(layer48_out_V_data_0_V_TDATA),
    .TRAN_layer48_out_V_data_0_V_TVALID(axi_s_layer48_out_V_data_0_V_TVALID),
    .TRAN_layer48_out_V_data_0_V_TREADY(axi_s_layer48_out_V_data_0_V_TREADY),
    .ready(layer48_out_V_data_0_V_ready),
    .done(layer48_out_V_data_0_V_done),
    .transaction(layer48_out_V_data_0_V_transaction));

assign layer48_out_V_data_0_V_ready = 0;
assign layer48_out_V_data_0_V_done = AESL_done;

assign axi_s_layer48_out_V_data_0_V_TVALID = layer48_out_V_data_0_V_TVALID;

reg reg_layer48_out_V_data_0_V_TREADY;
initial begin : gen_reg_layer48_out_V_data_0_V_TREADY_process
    integer proc_rand;
    reg_layer48_out_V_data_0_V_TREADY = axi_s_layer48_out_V_data_0_V_TREADY;
    while(1)
    begin
        @(axi_s_layer48_out_V_data_0_V_TREADY);
        reg_layer48_out_V_data_0_V_TREADY = axi_s_layer48_out_V_data_0_V_TREADY;
    end
end


assign layer48_out_V_data_0_V_TREADY = reg_layer48_out_V_data_0_V_TREADY;

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_input_images_V_data_0_V;
reg [31:0] size_input_images_V_data_0_V;
reg [31:0] size_input_images_V_data_0_V_backup;
reg end_pos_enc_main_V_data_0_V;
reg [31:0] size_pos_enc_main_V_data_0_V;
reg [31:0] size_pos_enc_main_V_data_0_V_backup;
reg end_pos_enc_main_V_data_1_V;
reg [31:0] size_pos_enc_main_V_data_1_V;
reg [31:0] size_pos_enc_main_V_data_1_V_backup;
reg end_pos_enc_main_V_data_2_V;
reg [31:0] size_pos_enc_main_V_data_2_V;
reg [31:0] size_pos_enc_main_V_data_2_V_backup;
reg end_pos_enc_main_V_data_3_V;
reg [31:0] size_pos_enc_main_V_data_3_V;
reg [31:0] size_pos_enc_main_V_data_3_V_backup;
reg end_pos_enc_bottleneck_V_data_0_V;
reg [31:0] size_pos_enc_bottleneck_V_data_0_V;
reg [31:0] size_pos_enc_bottleneck_V_data_0_V_backup;
reg end_pos_enc_bottleneck_V_data_1_V;
reg [31:0] size_pos_enc_bottleneck_V_data_1_V;
reg [31:0] size_pos_enc_bottleneck_V_data_1_V_backup;
reg end_pos_enc_bottleneck_V_data_2_V;
reg [31:0] size_pos_enc_bottleneck_V_data_2_V;
reg [31:0] size_pos_enc_bottleneck_V_data_2_V_backup;
reg end_pos_enc_bottleneck_V_data_3_V;
reg [31:0] size_pos_enc_bottleneck_V_data_3_V;
reg [31:0] size_pos_enc_bottleneck_V_data_3_V_backup;
reg end_layer48_out_V_data_0_V;
reg [31:0] size_layer48_out_V_data_0_V;
reg [31:0] size_layer48_out_V_data_0_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_input_images_V_data_0_V
        input_images_V_data_0_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_input_images_V_data_0_V or input_images_V_data_0_V_transaction);
            if (ap_c_n_tvin_trans_num_input_images_V_data_0_V > input_images_V_data_0_V_transaction) begin
                input_images_V_data_0_V_ready_reg = 1;
            end else begin
                input_images_V_data_0_V_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_pos_enc_main_V_data_0_V
        pos_enc_main_V_data_0_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V or pos_enc_main_V_data_0_V_transaction);
            if (ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V > pos_enc_main_V_data_0_V_transaction) begin
                pos_enc_main_V_data_0_V_ready_reg = 1;
            end else begin
                pos_enc_main_V_data_0_V_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_pos_enc_main_V_data_1_V
        pos_enc_main_V_data_1_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V or pos_enc_main_V_data_1_V_transaction);
            if (ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V > pos_enc_main_V_data_1_V_transaction) begin
                pos_enc_main_V_data_1_V_ready_reg = 1;
            end else begin
                pos_enc_main_V_data_1_V_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_pos_enc_main_V_data_2_V
        pos_enc_main_V_data_2_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V or pos_enc_main_V_data_2_V_transaction);
            if (ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V > pos_enc_main_V_data_2_V_transaction) begin
                pos_enc_main_V_data_2_V_ready_reg = 1;
            end else begin
                pos_enc_main_V_data_2_V_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_pos_enc_main_V_data_3_V
        pos_enc_main_V_data_3_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V or pos_enc_main_V_data_3_V_transaction);
            if (ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V > pos_enc_main_V_data_3_V_transaction) begin
                pos_enc_main_V_data_3_V_ready_reg = 1;
            end else begin
                pos_enc_main_V_data_3_V_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_pos_enc_bottleneck_V_data_0_V
        pos_enc_bottleneck_V_data_0_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V or pos_enc_bottleneck_V_data_0_V_transaction);
            if (ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V > pos_enc_bottleneck_V_data_0_V_transaction) begin
                pos_enc_bottleneck_V_data_0_V_ready_reg = 1;
            end else begin
                pos_enc_bottleneck_V_data_0_V_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_pos_enc_bottleneck_V_data_1_V
        pos_enc_bottleneck_V_data_1_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V or pos_enc_bottleneck_V_data_1_V_transaction);
            if (ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V > pos_enc_bottleneck_V_data_1_V_transaction) begin
                pos_enc_bottleneck_V_data_1_V_ready_reg = 1;
            end else begin
                pos_enc_bottleneck_V_data_1_V_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_pos_enc_bottleneck_V_data_2_V
        pos_enc_bottleneck_V_data_2_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V or pos_enc_bottleneck_V_data_2_V_transaction);
            if (ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V > pos_enc_bottleneck_V_data_2_V_transaction) begin
                pos_enc_bottleneck_V_data_2_V_ready_reg = 1;
            end else begin
                pos_enc_bottleneck_V_data_2_V_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_pos_enc_bottleneck_V_data_3_V
        pos_enc_bottleneck_V_data_3_V_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V or pos_enc_bottleneck_V_data_3_V_transaction);
            if (ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V > pos_enc_bottleneck_V_data_3_V_transaction) begin
                pos_enc_bottleneck_V_data_3_V_ready_reg = 1;
            end else begin
                pos_enc_bottleneck_V_data_3_V_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_input_images_V_data_0_V "../tv/stream_size/stream_size_in_input_images_V_data_0_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_input_images_V_data_0_V
        integer fp_input_images_V_data_0_V;
        reg [127:0] token_input_images_V_data_0_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_input_images_V_data_0_V = 0;
        end_input_images_V_data_0_V = 0;
        wait (AESL_reset === 1);
        
        fp_input_images_V_data_0_V = $fopen(`STREAM_SIZE_IN_input_images_V_data_0_V, "r");
        if(fp_input_images_V_data_0_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_input_images_V_data_0_V);
            $finish;
        end
        read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be [[[runtime]]]
        if (token_input_images_V_data_0_V != "[[[runtime]]]") begin
            $display("ERROR: token_input_images_V_data_0_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_input_images_V_data_0_V = 0;
        size_input_images_V_data_0_V_backup = 0;
        while (size_input_images_V_data_0_V == 0 && end_input_images_V_data_0_V == 0) begin
            ap_c_n_tvin_trans_num_input_images_V_data_0_V = ap_c_n_tvin_trans_num_input_images_V_data_0_V + 1;
            read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_input_images_V_data_0_V == "[[transaction]]") begin
                read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be transaction number
                read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be size for hls::stream
                ret = $sscanf(token_input_images_V_data_0_V, "%d", size_input_images_V_data_0_V);
                if (size_input_images_V_data_0_V > 0) begin
                    size_input_images_V_data_0_V_backup = size_input_images_V_data_0_V;
                end
                read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be [[/transaction]]
            end else if (token_input_images_V_data_0_V == "[[[/runtime]]]") begin
                $fclose(fp_input_images_V_data_0_V);
                end_input_images_V_data_0_V = 1;
            end else begin
                $display("ERROR: unknown token_input_images_V_data_0_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_input_images_V_data_0_V == 0) begin
                if ((input_images_V_data_0_V_TREADY & input_images_V_data_0_V_TVALID) == 1) begin
                    if (size_input_images_V_data_0_V > 0) begin
                        size_input_images_V_data_0_V = size_input_images_V_data_0_V - 1;
                        while (size_input_images_V_data_0_V == 0 && end_input_images_V_data_0_V == 0) begin
                            ap_c_n_tvin_trans_num_input_images_V_data_0_V = ap_c_n_tvin_trans_num_input_images_V_data_0_V + 1;
                            read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_input_images_V_data_0_V == "[[transaction]]") begin
                                read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be transaction number
                                read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be size for hls::stream
                                ret = $sscanf(token_input_images_V_data_0_V, "%d", size_input_images_V_data_0_V);
                                if (size_input_images_V_data_0_V > 0) begin
                                    size_input_images_V_data_0_V_backup = size_input_images_V_data_0_V;
                                end
                                read_token(fp_input_images_V_data_0_V, token_input_images_V_data_0_V); // should be [[/transaction]]
                            end else if (token_input_images_V_data_0_V == "[[[/runtime]]]") begin
                                size_input_images_V_data_0_V = size_input_images_V_data_0_V_backup;
                                $fclose(fp_input_images_V_data_0_V);
                                end_input_images_V_data_0_V = 1;
                            end else begin
                                $display("ERROR: unknown token_input_images_V_data_0_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((input_images_V_data_0_V_TREADY & input_images_V_data_0_V_TVALID) == 1) begin
                    if (size_input_images_V_data_0_V > 0) begin
                        size_input_images_V_data_0_V = size_input_images_V_data_0_V - 1;
                        if (size_input_images_V_data_0_V == 0) begin
                            ap_c_n_tvin_trans_num_input_images_V_data_0_V = ap_c_n_tvin_trans_num_input_images_V_data_0_V + 1;
                            size_input_images_V_data_0_V = size_input_images_V_data_0_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_pos_enc_main_V_data_0_V "../tv/stream_size/stream_size_in_pos_enc_main_V_data_0_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V
        integer fp_pos_enc_main_V_data_0_V;
        reg [127:0] token_pos_enc_main_V_data_0_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V = 0;
        end_pos_enc_main_V_data_0_V = 0;
        wait (AESL_reset === 1);
        
        fp_pos_enc_main_V_data_0_V = $fopen(`STREAM_SIZE_IN_pos_enc_main_V_data_0_V, "r");
        if(fp_pos_enc_main_V_data_0_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_pos_enc_main_V_data_0_V);
            $finish;
        end
        read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be [[[runtime]]]
        if (token_pos_enc_main_V_data_0_V != "[[[runtime]]]") begin
            $display("ERROR: token_pos_enc_main_V_data_0_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_pos_enc_main_V_data_0_V = 0;
        size_pos_enc_main_V_data_0_V_backup = 0;
        while (size_pos_enc_main_V_data_0_V == 0 && end_pos_enc_main_V_data_0_V == 0) begin
            ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V + 1;
            read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_pos_enc_main_V_data_0_V == "[[transaction]]") begin
                read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be transaction number
                read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be size for hls::stream
                ret = $sscanf(token_pos_enc_main_V_data_0_V, "%d", size_pos_enc_main_V_data_0_V);
                if (size_pos_enc_main_V_data_0_V > 0) begin
                    size_pos_enc_main_V_data_0_V_backup = size_pos_enc_main_V_data_0_V;
                end
                read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be [[/transaction]]
            end else if (token_pos_enc_main_V_data_0_V == "[[[/runtime]]]") begin
                $fclose(fp_pos_enc_main_V_data_0_V);
                end_pos_enc_main_V_data_0_V = 1;
            end else begin
                $display("ERROR: unknown token_pos_enc_main_V_data_0_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_pos_enc_main_V_data_0_V == 0) begin
                if ((pos_enc_main_V_data_0_V_TREADY & pos_enc_main_V_data_0_V_TVALID) == 1) begin
                    if (size_pos_enc_main_V_data_0_V > 0) begin
                        size_pos_enc_main_V_data_0_V = size_pos_enc_main_V_data_0_V - 1;
                        while (size_pos_enc_main_V_data_0_V == 0 && end_pos_enc_main_V_data_0_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V + 1;
                            read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_pos_enc_main_V_data_0_V == "[[transaction]]") begin
                                read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be transaction number
                                read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be size for hls::stream
                                ret = $sscanf(token_pos_enc_main_V_data_0_V, "%d", size_pos_enc_main_V_data_0_V);
                                if (size_pos_enc_main_V_data_0_V > 0) begin
                                    size_pos_enc_main_V_data_0_V_backup = size_pos_enc_main_V_data_0_V;
                                end
                                read_token(fp_pos_enc_main_V_data_0_V, token_pos_enc_main_V_data_0_V); // should be [[/transaction]]
                            end else if (token_pos_enc_main_V_data_0_V == "[[[/runtime]]]") begin
                                size_pos_enc_main_V_data_0_V = size_pos_enc_main_V_data_0_V_backup;
                                $fclose(fp_pos_enc_main_V_data_0_V);
                                end_pos_enc_main_V_data_0_V = 1;
                            end else begin
                                $display("ERROR: unknown token_pos_enc_main_V_data_0_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((pos_enc_main_V_data_0_V_TREADY & pos_enc_main_V_data_0_V_TVALID) == 1) begin
                    if (size_pos_enc_main_V_data_0_V > 0) begin
                        size_pos_enc_main_V_data_0_V = size_pos_enc_main_V_data_0_V - 1;
                        if (size_pos_enc_main_V_data_0_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_0_V + 1;
                            size_pos_enc_main_V_data_0_V = size_pos_enc_main_V_data_0_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_pos_enc_main_V_data_1_V "../tv/stream_size/stream_size_in_pos_enc_main_V_data_1_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V
        integer fp_pos_enc_main_V_data_1_V;
        reg [127:0] token_pos_enc_main_V_data_1_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V = 0;
        end_pos_enc_main_V_data_1_V = 0;
        wait (AESL_reset === 1);
        
        fp_pos_enc_main_V_data_1_V = $fopen(`STREAM_SIZE_IN_pos_enc_main_V_data_1_V, "r");
        if(fp_pos_enc_main_V_data_1_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_pos_enc_main_V_data_1_V);
            $finish;
        end
        read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be [[[runtime]]]
        if (token_pos_enc_main_V_data_1_V != "[[[runtime]]]") begin
            $display("ERROR: token_pos_enc_main_V_data_1_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_pos_enc_main_V_data_1_V = 0;
        size_pos_enc_main_V_data_1_V_backup = 0;
        while (size_pos_enc_main_V_data_1_V == 0 && end_pos_enc_main_V_data_1_V == 0) begin
            ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V + 1;
            read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_pos_enc_main_V_data_1_V == "[[transaction]]") begin
                read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be transaction number
                read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be size for hls::stream
                ret = $sscanf(token_pos_enc_main_V_data_1_V, "%d", size_pos_enc_main_V_data_1_V);
                if (size_pos_enc_main_V_data_1_V > 0) begin
                    size_pos_enc_main_V_data_1_V_backup = size_pos_enc_main_V_data_1_V;
                end
                read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be [[/transaction]]
            end else if (token_pos_enc_main_V_data_1_V == "[[[/runtime]]]") begin
                $fclose(fp_pos_enc_main_V_data_1_V);
                end_pos_enc_main_V_data_1_V = 1;
            end else begin
                $display("ERROR: unknown token_pos_enc_main_V_data_1_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_pos_enc_main_V_data_1_V == 0) begin
                if ((pos_enc_main_V_data_1_V_TREADY & pos_enc_main_V_data_1_V_TVALID) == 1) begin
                    if (size_pos_enc_main_V_data_1_V > 0) begin
                        size_pos_enc_main_V_data_1_V = size_pos_enc_main_V_data_1_V - 1;
                        while (size_pos_enc_main_V_data_1_V == 0 && end_pos_enc_main_V_data_1_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V + 1;
                            read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_pos_enc_main_V_data_1_V == "[[transaction]]") begin
                                read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be transaction number
                                read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be size for hls::stream
                                ret = $sscanf(token_pos_enc_main_V_data_1_V, "%d", size_pos_enc_main_V_data_1_V);
                                if (size_pos_enc_main_V_data_1_V > 0) begin
                                    size_pos_enc_main_V_data_1_V_backup = size_pos_enc_main_V_data_1_V;
                                end
                                read_token(fp_pos_enc_main_V_data_1_V, token_pos_enc_main_V_data_1_V); // should be [[/transaction]]
                            end else if (token_pos_enc_main_V_data_1_V == "[[[/runtime]]]") begin
                                size_pos_enc_main_V_data_1_V = size_pos_enc_main_V_data_1_V_backup;
                                $fclose(fp_pos_enc_main_V_data_1_V);
                                end_pos_enc_main_V_data_1_V = 1;
                            end else begin
                                $display("ERROR: unknown token_pos_enc_main_V_data_1_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((pos_enc_main_V_data_1_V_TREADY & pos_enc_main_V_data_1_V_TVALID) == 1) begin
                    if (size_pos_enc_main_V_data_1_V > 0) begin
                        size_pos_enc_main_V_data_1_V = size_pos_enc_main_V_data_1_V - 1;
                        if (size_pos_enc_main_V_data_1_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_1_V + 1;
                            size_pos_enc_main_V_data_1_V = size_pos_enc_main_V_data_1_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_pos_enc_main_V_data_2_V "../tv/stream_size/stream_size_in_pos_enc_main_V_data_2_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V
        integer fp_pos_enc_main_V_data_2_V;
        reg [127:0] token_pos_enc_main_V_data_2_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V = 0;
        end_pos_enc_main_V_data_2_V = 0;
        wait (AESL_reset === 1);
        
        fp_pos_enc_main_V_data_2_V = $fopen(`STREAM_SIZE_IN_pos_enc_main_V_data_2_V, "r");
        if(fp_pos_enc_main_V_data_2_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_pos_enc_main_V_data_2_V);
            $finish;
        end
        read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be [[[runtime]]]
        if (token_pos_enc_main_V_data_2_V != "[[[runtime]]]") begin
            $display("ERROR: token_pos_enc_main_V_data_2_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_pos_enc_main_V_data_2_V = 0;
        size_pos_enc_main_V_data_2_V_backup = 0;
        while (size_pos_enc_main_V_data_2_V == 0 && end_pos_enc_main_V_data_2_V == 0) begin
            ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V + 1;
            read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_pos_enc_main_V_data_2_V == "[[transaction]]") begin
                read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be transaction number
                read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be size for hls::stream
                ret = $sscanf(token_pos_enc_main_V_data_2_V, "%d", size_pos_enc_main_V_data_2_V);
                if (size_pos_enc_main_V_data_2_V > 0) begin
                    size_pos_enc_main_V_data_2_V_backup = size_pos_enc_main_V_data_2_V;
                end
                read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be [[/transaction]]
            end else if (token_pos_enc_main_V_data_2_V == "[[[/runtime]]]") begin
                $fclose(fp_pos_enc_main_V_data_2_V);
                end_pos_enc_main_V_data_2_V = 1;
            end else begin
                $display("ERROR: unknown token_pos_enc_main_V_data_2_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_pos_enc_main_V_data_2_V == 0) begin
                if ((pos_enc_main_V_data_2_V_TREADY & pos_enc_main_V_data_2_V_TVALID) == 1) begin
                    if (size_pos_enc_main_V_data_2_V > 0) begin
                        size_pos_enc_main_V_data_2_V = size_pos_enc_main_V_data_2_V - 1;
                        while (size_pos_enc_main_V_data_2_V == 0 && end_pos_enc_main_V_data_2_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V + 1;
                            read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_pos_enc_main_V_data_2_V == "[[transaction]]") begin
                                read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be transaction number
                                read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be size for hls::stream
                                ret = $sscanf(token_pos_enc_main_V_data_2_V, "%d", size_pos_enc_main_V_data_2_V);
                                if (size_pos_enc_main_V_data_2_V > 0) begin
                                    size_pos_enc_main_V_data_2_V_backup = size_pos_enc_main_V_data_2_V;
                                end
                                read_token(fp_pos_enc_main_V_data_2_V, token_pos_enc_main_V_data_2_V); // should be [[/transaction]]
                            end else if (token_pos_enc_main_V_data_2_V == "[[[/runtime]]]") begin
                                size_pos_enc_main_V_data_2_V = size_pos_enc_main_V_data_2_V_backup;
                                $fclose(fp_pos_enc_main_V_data_2_V);
                                end_pos_enc_main_V_data_2_V = 1;
                            end else begin
                                $display("ERROR: unknown token_pos_enc_main_V_data_2_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((pos_enc_main_V_data_2_V_TREADY & pos_enc_main_V_data_2_V_TVALID) == 1) begin
                    if (size_pos_enc_main_V_data_2_V > 0) begin
                        size_pos_enc_main_V_data_2_V = size_pos_enc_main_V_data_2_V - 1;
                        if (size_pos_enc_main_V_data_2_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_2_V + 1;
                            size_pos_enc_main_V_data_2_V = size_pos_enc_main_V_data_2_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_pos_enc_main_V_data_3_V "../tv/stream_size/stream_size_in_pos_enc_main_V_data_3_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V
        integer fp_pos_enc_main_V_data_3_V;
        reg [127:0] token_pos_enc_main_V_data_3_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V = 0;
        end_pos_enc_main_V_data_3_V = 0;
        wait (AESL_reset === 1);
        
        fp_pos_enc_main_V_data_3_V = $fopen(`STREAM_SIZE_IN_pos_enc_main_V_data_3_V, "r");
        if(fp_pos_enc_main_V_data_3_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_pos_enc_main_V_data_3_V);
            $finish;
        end
        read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be [[[runtime]]]
        if (token_pos_enc_main_V_data_3_V != "[[[runtime]]]") begin
            $display("ERROR: token_pos_enc_main_V_data_3_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_pos_enc_main_V_data_3_V = 0;
        size_pos_enc_main_V_data_3_V_backup = 0;
        while (size_pos_enc_main_V_data_3_V == 0 && end_pos_enc_main_V_data_3_V == 0) begin
            ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V + 1;
            read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_pos_enc_main_V_data_3_V == "[[transaction]]") begin
                read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be transaction number
                read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be size for hls::stream
                ret = $sscanf(token_pos_enc_main_V_data_3_V, "%d", size_pos_enc_main_V_data_3_V);
                if (size_pos_enc_main_V_data_3_V > 0) begin
                    size_pos_enc_main_V_data_3_V_backup = size_pos_enc_main_V_data_3_V;
                end
                read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be [[/transaction]]
            end else if (token_pos_enc_main_V_data_3_V == "[[[/runtime]]]") begin
                $fclose(fp_pos_enc_main_V_data_3_V);
                end_pos_enc_main_V_data_3_V = 1;
            end else begin
                $display("ERROR: unknown token_pos_enc_main_V_data_3_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_pos_enc_main_V_data_3_V == 0) begin
                if ((pos_enc_main_V_data_3_V_TREADY & pos_enc_main_V_data_3_V_TVALID) == 1) begin
                    if (size_pos_enc_main_V_data_3_V > 0) begin
                        size_pos_enc_main_V_data_3_V = size_pos_enc_main_V_data_3_V - 1;
                        while (size_pos_enc_main_V_data_3_V == 0 && end_pos_enc_main_V_data_3_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V + 1;
                            read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_pos_enc_main_V_data_3_V == "[[transaction]]") begin
                                read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be transaction number
                                read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be size for hls::stream
                                ret = $sscanf(token_pos_enc_main_V_data_3_V, "%d", size_pos_enc_main_V_data_3_V);
                                if (size_pos_enc_main_V_data_3_V > 0) begin
                                    size_pos_enc_main_V_data_3_V_backup = size_pos_enc_main_V_data_3_V;
                                end
                                read_token(fp_pos_enc_main_V_data_3_V, token_pos_enc_main_V_data_3_V); // should be [[/transaction]]
                            end else if (token_pos_enc_main_V_data_3_V == "[[[/runtime]]]") begin
                                size_pos_enc_main_V_data_3_V = size_pos_enc_main_V_data_3_V_backup;
                                $fclose(fp_pos_enc_main_V_data_3_V);
                                end_pos_enc_main_V_data_3_V = 1;
                            end else begin
                                $display("ERROR: unknown token_pos_enc_main_V_data_3_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((pos_enc_main_V_data_3_V_TREADY & pos_enc_main_V_data_3_V_TVALID) == 1) begin
                    if (size_pos_enc_main_V_data_3_V > 0) begin
                        size_pos_enc_main_V_data_3_V = size_pos_enc_main_V_data_3_V - 1;
                        if (size_pos_enc_main_V_data_3_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V = ap_c_n_tvin_trans_num_pos_enc_main_V_data_3_V + 1;
                            size_pos_enc_main_V_data_3_V = size_pos_enc_main_V_data_3_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V "../tv/stream_size/stream_size_in_pos_enc_bottleneck_V_data_0_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V
        integer fp_pos_enc_bottleneck_V_data_0_V;
        reg [127:0] token_pos_enc_bottleneck_V_data_0_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V = 0;
        end_pos_enc_bottleneck_V_data_0_V = 0;
        wait (AESL_reset === 1);
        
        fp_pos_enc_bottleneck_V_data_0_V = $fopen(`STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V, "r");
        if(fp_pos_enc_bottleneck_V_data_0_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_pos_enc_bottleneck_V_data_0_V);
            $finish;
        end
        read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be [[[runtime]]]
        if (token_pos_enc_bottleneck_V_data_0_V != "[[[runtime]]]") begin
            $display("ERROR: token_pos_enc_bottleneck_V_data_0_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_pos_enc_bottleneck_V_data_0_V = 0;
        size_pos_enc_bottleneck_V_data_0_V_backup = 0;
        while (size_pos_enc_bottleneck_V_data_0_V == 0 && end_pos_enc_bottleneck_V_data_0_V == 0) begin
            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V + 1;
            read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_pos_enc_bottleneck_V_data_0_V == "[[transaction]]") begin
                read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be transaction number
                read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be size for hls::stream
                ret = $sscanf(token_pos_enc_bottleneck_V_data_0_V, "%d", size_pos_enc_bottleneck_V_data_0_V);
                if (size_pos_enc_bottleneck_V_data_0_V > 0) begin
                    size_pos_enc_bottleneck_V_data_0_V_backup = size_pos_enc_bottleneck_V_data_0_V;
                end
                read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be [[/transaction]]
            end else if (token_pos_enc_bottleneck_V_data_0_V == "[[[/runtime]]]") begin
                $fclose(fp_pos_enc_bottleneck_V_data_0_V);
                end_pos_enc_bottleneck_V_data_0_V = 1;
            end else begin
                $display("ERROR: unknown token_pos_enc_bottleneck_V_data_0_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_pos_enc_bottleneck_V_data_0_V == 0) begin
                if ((pos_enc_bottleneck_V_data_0_V_TREADY & pos_enc_bottleneck_V_data_0_V_TVALID) == 1) begin
                    if (size_pos_enc_bottleneck_V_data_0_V > 0) begin
                        size_pos_enc_bottleneck_V_data_0_V = size_pos_enc_bottleneck_V_data_0_V - 1;
                        while (size_pos_enc_bottleneck_V_data_0_V == 0 && end_pos_enc_bottleneck_V_data_0_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V + 1;
                            read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_pos_enc_bottleneck_V_data_0_V == "[[transaction]]") begin
                                read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be transaction number
                                read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be size for hls::stream
                                ret = $sscanf(token_pos_enc_bottleneck_V_data_0_V, "%d", size_pos_enc_bottleneck_V_data_0_V);
                                if (size_pos_enc_bottleneck_V_data_0_V > 0) begin
                                    size_pos_enc_bottleneck_V_data_0_V_backup = size_pos_enc_bottleneck_V_data_0_V;
                                end
                                read_token(fp_pos_enc_bottleneck_V_data_0_V, token_pos_enc_bottleneck_V_data_0_V); // should be [[/transaction]]
                            end else if (token_pos_enc_bottleneck_V_data_0_V == "[[[/runtime]]]") begin
                                size_pos_enc_bottleneck_V_data_0_V = size_pos_enc_bottleneck_V_data_0_V_backup;
                                $fclose(fp_pos_enc_bottleneck_V_data_0_V);
                                end_pos_enc_bottleneck_V_data_0_V = 1;
                            end else begin
                                $display("ERROR: unknown token_pos_enc_bottleneck_V_data_0_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((pos_enc_bottleneck_V_data_0_V_TREADY & pos_enc_bottleneck_V_data_0_V_TVALID) == 1) begin
                    if (size_pos_enc_bottleneck_V_data_0_V > 0) begin
                        size_pos_enc_bottleneck_V_data_0_V = size_pos_enc_bottleneck_V_data_0_V - 1;
                        if (size_pos_enc_bottleneck_V_data_0_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_0_V + 1;
                            size_pos_enc_bottleneck_V_data_0_V = size_pos_enc_bottleneck_V_data_0_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_pos_enc_bottleneck_V_data_1_V "../tv/stream_size/stream_size_in_pos_enc_bottleneck_V_data_1_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V
        integer fp_pos_enc_bottleneck_V_data_1_V;
        reg [127:0] token_pos_enc_bottleneck_V_data_1_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V = 0;
        end_pos_enc_bottleneck_V_data_1_V = 0;
        wait (AESL_reset === 1);
        
        fp_pos_enc_bottleneck_V_data_1_V = $fopen(`STREAM_SIZE_IN_pos_enc_bottleneck_V_data_1_V, "r");
        if(fp_pos_enc_bottleneck_V_data_1_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_pos_enc_bottleneck_V_data_1_V);
            $finish;
        end
        read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be [[[runtime]]]
        if (token_pos_enc_bottleneck_V_data_1_V != "[[[runtime]]]") begin
            $display("ERROR: token_pos_enc_bottleneck_V_data_1_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_pos_enc_bottleneck_V_data_1_V = 0;
        size_pos_enc_bottleneck_V_data_1_V_backup = 0;
        while (size_pos_enc_bottleneck_V_data_1_V == 0 && end_pos_enc_bottleneck_V_data_1_V == 0) begin
            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V + 1;
            read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_pos_enc_bottleneck_V_data_1_V == "[[transaction]]") begin
                read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be transaction number
                read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be size for hls::stream
                ret = $sscanf(token_pos_enc_bottleneck_V_data_1_V, "%d", size_pos_enc_bottleneck_V_data_1_V);
                if (size_pos_enc_bottleneck_V_data_1_V > 0) begin
                    size_pos_enc_bottleneck_V_data_1_V_backup = size_pos_enc_bottleneck_V_data_1_V;
                end
                read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be [[/transaction]]
            end else if (token_pos_enc_bottleneck_V_data_1_V == "[[[/runtime]]]") begin
                $fclose(fp_pos_enc_bottleneck_V_data_1_V);
                end_pos_enc_bottleneck_V_data_1_V = 1;
            end else begin
                $display("ERROR: unknown token_pos_enc_bottleneck_V_data_1_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_pos_enc_bottleneck_V_data_1_V == 0) begin
                if ((pos_enc_bottleneck_V_data_1_V_TREADY & pos_enc_bottleneck_V_data_1_V_TVALID) == 1) begin
                    if (size_pos_enc_bottleneck_V_data_1_V > 0) begin
                        size_pos_enc_bottleneck_V_data_1_V = size_pos_enc_bottleneck_V_data_1_V - 1;
                        while (size_pos_enc_bottleneck_V_data_1_V == 0 && end_pos_enc_bottleneck_V_data_1_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V + 1;
                            read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_pos_enc_bottleneck_V_data_1_V == "[[transaction]]") begin
                                read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be transaction number
                                read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be size for hls::stream
                                ret = $sscanf(token_pos_enc_bottleneck_V_data_1_V, "%d", size_pos_enc_bottleneck_V_data_1_V);
                                if (size_pos_enc_bottleneck_V_data_1_V > 0) begin
                                    size_pos_enc_bottleneck_V_data_1_V_backup = size_pos_enc_bottleneck_V_data_1_V;
                                end
                                read_token(fp_pos_enc_bottleneck_V_data_1_V, token_pos_enc_bottleneck_V_data_1_V); // should be [[/transaction]]
                            end else if (token_pos_enc_bottleneck_V_data_1_V == "[[[/runtime]]]") begin
                                size_pos_enc_bottleneck_V_data_1_V = size_pos_enc_bottleneck_V_data_1_V_backup;
                                $fclose(fp_pos_enc_bottleneck_V_data_1_V);
                                end_pos_enc_bottleneck_V_data_1_V = 1;
                            end else begin
                                $display("ERROR: unknown token_pos_enc_bottleneck_V_data_1_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((pos_enc_bottleneck_V_data_1_V_TREADY & pos_enc_bottleneck_V_data_1_V_TVALID) == 1) begin
                    if (size_pos_enc_bottleneck_V_data_1_V > 0) begin
                        size_pos_enc_bottleneck_V_data_1_V = size_pos_enc_bottleneck_V_data_1_V - 1;
                        if (size_pos_enc_bottleneck_V_data_1_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_1_V + 1;
                            size_pos_enc_bottleneck_V_data_1_V = size_pos_enc_bottleneck_V_data_1_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_pos_enc_bottleneck_V_data_2_V "../tv/stream_size/stream_size_in_pos_enc_bottleneck_V_data_2_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V
        integer fp_pos_enc_bottleneck_V_data_2_V;
        reg [127:0] token_pos_enc_bottleneck_V_data_2_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V = 0;
        end_pos_enc_bottleneck_V_data_2_V = 0;
        wait (AESL_reset === 1);
        
        fp_pos_enc_bottleneck_V_data_2_V = $fopen(`STREAM_SIZE_IN_pos_enc_bottleneck_V_data_2_V, "r");
        if(fp_pos_enc_bottleneck_V_data_2_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_pos_enc_bottleneck_V_data_2_V);
            $finish;
        end
        read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be [[[runtime]]]
        if (token_pos_enc_bottleneck_V_data_2_V != "[[[runtime]]]") begin
            $display("ERROR: token_pos_enc_bottleneck_V_data_2_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_pos_enc_bottleneck_V_data_2_V = 0;
        size_pos_enc_bottleneck_V_data_2_V_backup = 0;
        while (size_pos_enc_bottleneck_V_data_2_V == 0 && end_pos_enc_bottleneck_V_data_2_V == 0) begin
            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V + 1;
            read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_pos_enc_bottleneck_V_data_2_V == "[[transaction]]") begin
                read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be transaction number
                read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be size for hls::stream
                ret = $sscanf(token_pos_enc_bottleneck_V_data_2_V, "%d", size_pos_enc_bottleneck_V_data_2_V);
                if (size_pos_enc_bottleneck_V_data_2_V > 0) begin
                    size_pos_enc_bottleneck_V_data_2_V_backup = size_pos_enc_bottleneck_V_data_2_V;
                end
                read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be [[/transaction]]
            end else if (token_pos_enc_bottleneck_V_data_2_V == "[[[/runtime]]]") begin
                $fclose(fp_pos_enc_bottleneck_V_data_2_V);
                end_pos_enc_bottleneck_V_data_2_V = 1;
            end else begin
                $display("ERROR: unknown token_pos_enc_bottleneck_V_data_2_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_pos_enc_bottleneck_V_data_2_V == 0) begin
                if ((pos_enc_bottleneck_V_data_2_V_TREADY & pos_enc_bottleneck_V_data_2_V_TVALID) == 1) begin
                    if (size_pos_enc_bottleneck_V_data_2_V > 0) begin
                        size_pos_enc_bottleneck_V_data_2_V = size_pos_enc_bottleneck_V_data_2_V - 1;
                        while (size_pos_enc_bottleneck_V_data_2_V == 0 && end_pos_enc_bottleneck_V_data_2_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V + 1;
                            read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_pos_enc_bottleneck_V_data_2_V == "[[transaction]]") begin
                                read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be transaction number
                                read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be size for hls::stream
                                ret = $sscanf(token_pos_enc_bottleneck_V_data_2_V, "%d", size_pos_enc_bottleneck_V_data_2_V);
                                if (size_pos_enc_bottleneck_V_data_2_V > 0) begin
                                    size_pos_enc_bottleneck_V_data_2_V_backup = size_pos_enc_bottleneck_V_data_2_V;
                                end
                                read_token(fp_pos_enc_bottleneck_V_data_2_V, token_pos_enc_bottleneck_V_data_2_V); // should be [[/transaction]]
                            end else if (token_pos_enc_bottleneck_V_data_2_V == "[[[/runtime]]]") begin
                                size_pos_enc_bottleneck_V_data_2_V = size_pos_enc_bottleneck_V_data_2_V_backup;
                                $fclose(fp_pos_enc_bottleneck_V_data_2_V);
                                end_pos_enc_bottleneck_V_data_2_V = 1;
                            end else begin
                                $display("ERROR: unknown token_pos_enc_bottleneck_V_data_2_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((pos_enc_bottleneck_V_data_2_V_TREADY & pos_enc_bottleneck_V_data_2_V_TVALID) == 1) begin
                    if (size_pos_enc_bottleneck_V_data_2_V > 0) begin
                        size_pos_enc_bottleneck_V_data_2_V = size_pos_enc_bottleneck_V_data_2_V - 1;
                        if (size_pos_enc_bottleneck_V_data_2_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_2_V + 1;
                            size_pos_enc_bottleneck_V_data_2_V = size_pos_enc_bottleneck_V_data_2_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_pos_enc_bottleneck_V_data_3_V "../tv/stream_size/stream_size_in_pos_enc_bottleneck_V_data_3_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V
        integer fp_pos_enc_bottleneck_V_data_3_V;
        reg [127:0] token_pos_enc_bottleneck_V_data_3_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V = 0;
        end_pos_enc_bottleneck_V_data_3_V = 0;
        wait (AESL_reset === 1);
        
        fp_pos_enc_bottleneck_V_data_3_V = $fopen(`STREAM_SIZE_IN_pos_enc_bottleneck_V_data_3_V, "r");
        if(fp_pos_enc_bottleneck_V_data_3_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_pos_enc_bottleneck_V_data_3_V);
            $finish;
        end
        read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be [[[runtime]]]
        if (token_pos_enc_bottleneck_V_data_3_V != "[[[runtime]]]") begin
            $display("ERROR: token_pos_enc_bottleneck_V_data_3_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_pos_enc_bottleneck_V_data_3_V = 0;
        size_pos_enc_bottleneck_V_data_3_V_backup = 0;
        while (size_pos_enc_bottleneck_V_data_3_V == 0 && end_pos_enc_bottleneck_V_data_3_V == 0) begin
            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V + 1;
            read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_pos_enc_bottleneck_V_data_3_V == "[[transaction]]") begin
                read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be transaction number
                read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be size for hls::stream
                ret = $sscanf(token_pos_enc_bottleneck_V_data_3_V, "%d", size_pos_enc_bottleneck_V_data_3_V);
                if (size_pos_enc_bottleneck_V_data_3_V > 0) begin
                    size_pos_enc_bottleneck_V_data_3_V_backup = size_pos_enc_bottleneck_V_data_3_V;
                end
                read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be [[/transaction]]
            end else if (token_pos_enc_bottleneck_V_data_3_V == "[[[/runtime]]]") begin
                $fclose(fp_pos_enc_bottleneck_V_data_3_V);
                end_pos_enc_bottleneck_V_data_3_V = 1;
            end else begin
                $display("ERROR: unknown token_pos_enc_bottleneck_V_data_3_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_pos_enc_bottleneck_V_data_3_V == 0) begin
                if ((pos_enc_bottleneck_V_data_3_V_TREADY & pos_enc_bottleneck_V_data_3_V_TVALID) == 1) begin
                    if (size_pos_enc_bottleneck_V_data_3_V > 0) begin
                        size_pos_enc_bottleneck_V_data_3_V = size_pos_enc_bottleneck_V_data_3_V - 1;
                        while (size_pos_enc_bottleneck_V_data_3_V == 0 && end_pos_enc_bottleneck_V_data_3_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V + 1;
                            read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_pos_enc_bottleneck_V_data_3_V == "[[transaction]]") begin
                                read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be transaction number
                                read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be size for hls::stream
                                ret = $sscanf(token_pos_enc_bottleneck_V_data_3_V, "%d", size_pos_enc_bottleneck_V_data_3_V);
                                if (size_pos_enc_bottleneck_V_data_3_V > 0) begin
                                    size_pos_enc_bottleneck_V_data_3_V_backup = size_pos_enc_bottleneck_V_data_3_V;
                                end
                                read_token(fp_pos_enc_bottleneck_V_data_3_V, token_pos_enc_bottleneck_V_data_3_V); // should be [[/transaction]]
                            end else if (token_pos_enc_bottleneck_V_data_3_V == "[[[/runtime]]]") begin
                                size_pos_enc_bottleneck_V_data_3_V = size_pos_enc_bottleneck_V_data_3_V_backup;
                                $fclose(fp_pos_enc_bottleneck_V_data_3_V);
                                end_pos_enc_bottleneck_V_data_3_V = 1;
                            end else begin
                                $display("ERROR: unknown token_pos_enc_bottleneck_V_data_3_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((pos_enc_bottleneck_V_data_3_V_TREADY & pos_enc_bottleneck_V_data_3_V_TVALID) == 1) begin
                    if (size_pos_enc_bottleneck_V_data_3_V > 0) begin
                        size_pos_enc_bottleneck_V_data_3_V = size_pos_enc_bottleneck_V_data_3_V - 1;
                        if (size_pos_enc_bottleneck_V_data_3_V == 0) begin
                            ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V = ap_c_n_tvin_trans_num_pos_enc_bottleneck_V_data_3_V + 1;
                            size_pos_enc_bottleneck_V_data_3_V = size_pos_enc_bottleneck_V_data_3_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_layer48_out_V_data_0_V;

initial begin : dump_tvout_runtime_sign_layer48_out_V_data_0_V
    integer fp;
    dump_tvout_finish_layer48_out_V_data_0_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_layer48_out_V_data_0_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_layer48_out_V_data_0_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_layer48_out_V_data_0_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_layer48_out_V_data_0_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_layer48_out_V_data_0_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .reset(AESL_reset),
    .clock(AESL_clock));


endmodule
