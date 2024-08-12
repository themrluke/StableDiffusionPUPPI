
 
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set layer48_out_group [add_wave_group layer48_out(axis) -into $coutputgroup]
add_wave /apatb_myproject_top/AESL_inst_myproject/layer48_out_V_data_0_V_TREADY -into $layer48_out_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/layer48_out_V_data_0_V_TVALID -into $layer48_out_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/layer48_out_V_data_0_V_TDATA -into $layer48_out_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set pos_enc_bottleneck_group [add_wave_group pos_enc_bottleneck(axis) -into $cinputgroup]
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_3_V_TREADY -into $pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_3_V_TVALID -into $pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_2_V_TREADY -into $pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_2_V_TVALID -into $pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_1_V_TREADY -into $pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_1_V_TVALID -into $pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_0_V_TREADY -into $pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_0_V_TVALID -into $pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_3_V_TDATA -into $pos_enc_bottleneck_group -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_2_V_TDATA -into $pos_enc_bottleneck_group -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_1_V_TDATA -into $pos_enc_bottleneck_group -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_bottleneck_V_data_0_V_TDATA -into $pos_enc_bottleneck_group -radix hex
set pos_enc_main_group [add_wave_group pos_enc_main(axis) -into $cinputgroup]
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_3_V_TREADY -into $pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_3_V_TVALID -into $pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_2_V_TREADY -into $pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_2_V_TVALID -into $pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_1_V_TREADY -into $pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_1_V_TVALID -into $pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_0_V_TREADY -into $pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_0_V_TVALID -into $pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_3_V_TDATA -into $pos_enc_main_group -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_2_V_TDATA -into $pos_enc_main_group -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_1_V_TDATA -into $pos_enc_main_group -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/pos_enc_main_V_data_0_V_TDATA -into $pos_enc_main_group -radix hex
set input_images_group [add_wave_group input_images(axis) -into $cinputgroup]
add_wave /apatb_myproject_top/AESL_inst_myproject/input_images_V_data_0_V_TREADY -into $input_images_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/input_images_V_data_0_V_TVALID -into $input_images_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/AESL_inst_myproject/input_images_V_data_0_V_TDATA -into $input_images_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_myproject_top/AESL_inst_myproject/ap_start -into $blocksiggroup
add_wave /apatb_myproject_top/AESL_inst_myproject/ap_done -into $blocksiggroup
add_wave /apatb_myproject_top/AESL_inst_myproject/ap_ready -into $blocksiggroup
add_wave /apatb_myproject_top/AESL_inst_myproject/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_myproject_top/AESL_inst_myproject/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_myproject_top/AESL_inst_myproject/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_myproject_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_myproject_top/LENGTH_input_images_V_data_0_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_pos_enc_main_V_data_0_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_pos_enc_main_V_data_1_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_pos_enc_main_V_data_2_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_pos_enc_main_V_data_3_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_pos_enc_bottleneck_V_data_0_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_pos_enc_bottleneck_V_data_1_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_pos_enc_bottleneck_V_data_2_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_pos_enc_bottleneck_V_data_3_V -into $tb_portdepth_group -radix hex
add_wave /apatb_myproject_top/LENGTH_layer48_out_V_data_0_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_layer48_out_group [add_wave_group layer48_out(axis) -into $tbcoutputgroup]
add_wave /apatb_myproject_top/layer48_out_V_data_0_V_TREADY -into $tb_layer48_out_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/layer48_out_V_data_0_V_TVALID -into $tb_layer48_out_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/layer48_out_V_data_0_V_TDATA -into $tb_layer48_out_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_pos_enc_bottleneck_group [add_wave_group pos_enc_bottleneck(axis) -into $tbcinputgroup]
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_3_V_TREADY -into $tb_pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_3_V_TVALID -into $tb_pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_2_V_TREADY -into $tb_pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_2_V_TVALID -into $tb_pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_1_V_TREADY -into $tb_pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_1_V_TVALID -into $tb_pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_0_V_TREADY -into $tb_pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_0_V_TVALID -into $tb_pos_enc_bottleneck_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_3_V_TDATA -into $tb_pos_enc_bottleneck_group -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_2_V_TDATA -into $tb_pos_enc_bottleneck_group -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_1_V_TDATA -into $tb_pos_enc_bottleneck_group -radix hex
add_wave /apatb_myproject_top/pos_enc_bottleneck_V_data_0_V_TDATA -into $tb_pos_enc_bottleneck_group -radix hex
set tb_pos_enc_main_group [add_wave_group pos_enc_main(axis) -into $tbcinputgroup]
add_wave /apatb_myproject_top/pos_enc_main_V_data_3_V_TREADY -into $tb_pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_3_V_TVALID -into $tb_pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_2_V_TREADY -into $tb_pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_2_V_TVALID -into $tb_pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_1_V_TREADY -into $tb_pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_1_V_TVALID -into $tb_pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_0_V_TREADY -into $tb_pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_0_V_TVALID -into $tb_pos_enc_main_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_3_V_TDATA -into $tb_pos_enc_main_group -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_2_V_TDATA -into $tb_pos_enc_main_group -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_1_V_TDATA -into $tb_pos_enc_main_group -radix hex
add_wave /apatb_myproject_top/pos_enc_main_V_data_0_V_TDATA -into $tb_pos_enc_main_group -radix hex
set tb_input_images_group [add_wave_group input_images(axis) -into $tbcinputgroup]
add_wave /apatb_myproject_top/input_images_V_data_0_V_TREADY -into $tb_input_images_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/input_images_V_data_0_V_TVALID -into $tb_input_images_group -color #ffff00 -radix hex
add_wave /apatb_myproject_top/input_images_V_data_0_V_TDATA -into $tb_input_images_group -radix hex
save_wave_config myproject.wcfg
run all
quit

