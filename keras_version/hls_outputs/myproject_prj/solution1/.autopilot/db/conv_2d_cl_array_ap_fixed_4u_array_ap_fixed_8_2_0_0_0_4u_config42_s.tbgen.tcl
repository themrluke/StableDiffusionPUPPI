set moduleName conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_2d_cl<array<ap_fixed,4u>,array<ap_fixed<8,2,0,0,0>,4u>,config42>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_data_0_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_1_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_2_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_3_V int 8 regular {fifo 0 volatile }  }
	{ res_V_data_0_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_1_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_2_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_3_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_data_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_3_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_data_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_3_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ data_V_data_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ data_V_data_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_V_data_0_V_read sc_out sc_logic 1 signal 0 } 
	{ data_V_data_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ data_V_data_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ data_V_data_1_V_read sc_out sc_logic 1 signal 1 } 
	{ data_V_data_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ data_V_data_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_V_data_2_V_read sc_out sc_logic 1 signal 2 } 
	{ data_V_data_3_V_dout sc_in sc_lv 8 signal 3 } 
	{ data_V_data_3_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ data_V_data_3_V_read sc_out sc_logic 1 signal 3 } 
	{ res_V_data_0_V_din sc_out sc_lv 8 signal 4 } 
	{ res_V_data_0_V_full_n sc_in sc_logic 1 signal 4 } 
	{ res_V_data_0_V_write sc_out sc_logic 1 signal 4 } 
	{ res_V_data_1_V_din sc_out sc_lv 8 signal 5 } 
	{ res_V_data_1_V_full_n sc_in sc_logic 1 signal 5 } 
	{ res_V_data_1_V_write sc_out sc_logic 1 signal 5 } 
	{ res_V_data_2_V_din sc_out sc_lv 8 signal 6 } 
	{ res_V_data_2_V_full_n sc_in sc_logic 1 signal 6 } 
	{ res_V_data_2_V_write sc_out sc_logic 1 signal 6 } 
	{ res_V_data_3_V_din sc_out sc_lv 8 signal 7 } 
	{ res_V_data_3_V_full_n sc_in sc_logic 1 signal 7 } 
	{ res_V_data_3_V_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "data_V_data_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_V_data_0_V", "role": "dout" }} , 
 	{ "name": "data_V_data_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_0_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_0_V", "role": "read" }} , 
 	{ "name": "data_V_data_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_V_data_1_V", "role": "dout" }} , 
 	{ "name": "data_V_data_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_1_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_1_V", "role": "read" }} , 
 	{ "name": "data_V_data_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_V_data_2_V", "role": "dout" }} , 
 	{ "name": "data_V_data_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_2_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_2_V", "role": "read" }} , 
 	{ "name": "data_V_data_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_V_data_3_V", "role": "dout" }} , 
 	{ "name": "data_V_data_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_3_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_3_V", "role": "read" }} , 
 	{ "name": "res_V_data_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_0_V", "role": "din" }} , 
 	{ "name": "res_V_data_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_0_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_0_V", "role": "write" }} , 
 	{ "name": "res_V_data_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_1_V", "role": "din" }} , 
 	{ "name": "res_V_data_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_1_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_1_V", "role": "write" }} , 
 	{ "name": "res_V_data_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_2_V", "role": "din" }} , 
 	{ "name": "res_V_data_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_2_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_2_V", "role": "write" }} , 
 	{ "name": "res_V_data_3_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_3_V", "role": "din" }} , 
 	{ "name": "res_V_data_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_3_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_3_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "946", "EstimateLatencyMax" : "946",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "kernel_data_V_4_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_4"}]},
			{"Name" : "kernel_data_V_4_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_5"}]},
			{"Name" : "kernel_data_V_4_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_6"}]},
			{"Name" : "kernel_data_V_4_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_7"}]},
			{"Name" : "kernel_data_V_4_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_8"}]},
			{"Name" : "kernel_data_V_4_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_9"}]},
			{"Name" : "kernel_data_V_4_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_10"}]},
			{"Name" : "kernel_data_V_4_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_11"}]},
			{"Name" : "kernel_data_V_4_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_16"}]},
			{"Name" : "kernel_data_V_4_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_17"}]},
			{"Name" : "kernel_data_V_4_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_18"}]},
			{"Name" : "kernel_data_V_4_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_19"}]},
			{"Name" : "kernel_data_V_4_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_20"}]},
			{"Name" : "kernel_data_V_4_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_21"}]},
			{"Name" : "kernel_data_V_4_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_22"}]},
			{"Name" : "kernel_data_V_4_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_23"}]},
			{"Name" : "kernel_data_V_4_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_28"}]},
			{"Name" : "kernel_data_V_4_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_29"}]},
			{"Name" : "kernel_data_V_4_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_30"}]},
			{"Name" : "kernel_data_V_4_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_31"}]},
			{"Name" : "kernel_data_V_4_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_32"}]},
			{"Name" : "kernel_data_V_4_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_33"}]},
			{"Name" : "kernel_data_V_4_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_34"}]},
			{"Name" : "kernel_data_V_4_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_35"}]},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_0_0"}]},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_1_0"}]},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_0_1"}]},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_1_1"}]},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_0_2"}]},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_1_2"}]},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_0_3"}]},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_1_3"}]},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "sX_5"}]},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "sY_5"}]},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "pY_5"}]},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "pX_5"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Parent" : "0", "Child" : ["2", "7"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "20", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_elem_data_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "res_stream_V_data_0_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_stream_V_data_0_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "res_stream_V_data_1_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_stream_V_data_1_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "res_stream_V_data_2_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_stream_V_data_2_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "res_stream_V_data_3_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_stream_V_data_3_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "kernel_data_V_4_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_0_0"}]},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_1_0"}]},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_0_1"}]},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_1_1"}]},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_0_2"}]},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_1_2"}]},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_0_3"}]},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_1_3"}]},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217", "Parent" : "1", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "17", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_24_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_26_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_28_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_30_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_35_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s_fu_14545", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s_fu_14550", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s_fu_14555", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s_fu_14560", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Parent" : "1", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_elem_data_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_28_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_30_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_0_0_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_1_0_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_0_1_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_1_1_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_0_2_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_1_2_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_0_3_U", "Parent" : "7"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_1_3_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 20}
		kernel_data_V_4_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_5 {Type IO LastRead -1 FirstWrite -1}
		sY_5 {Type IO LastRead -1 FirstWrite -1}
		pY_5 {Type IO LastRead -1 FirstWrite -1}
		pX_5 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		res_stream_V_data_0_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_1_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_2_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_3_V {Type O LastRead -1 FirstWrite 20}
		kernel_data_V_4_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_5 {Type IO LastRead -1 FirstWrite -1}
		sY_5 {Type IO LastRead -1 FirstWrite -1}
		pY_5 {Type IO LastRead -1 FirstWrite -1}
		pX_5 {Type IO LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0 {
		data_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_2_V_read {Type I LastRead 0 FirstWrite -1}
		data_3_V_read {Type I LastRead 0 FirstWrite -1}
		data_4_V_read {Type I LastRead 0 FirstWrite -1}
		data_5_V_read {Type I LastRead 0 FirstWrite -1}
		data_6_V_read {Type I LastRead 0 FirstWrite -1}
		data_7_V_read {Type I LastRead 0 FirstWrite -1}
		data_8_V_read {Type I LastRead 0 FirstWrite -1}
		data_9_V_read {Type I LastRead 0 FirstWrite -1}
		data_10_V_read {Type I LastRead 0 FirstWrite -1}
		data_11_V_read {Type I LastRead 0 FirstWrite -1}
		data_12_V_read {Type I LastRead 0 FirstWrite -1}
		data_13_V_read {Type I LastRead 0 FirstWrite -1}
		data_14_V_read {Type I LastRead 0 FirstWrite -1}
		data_15_V_read {Type I LastRead 0 FirstWrite -1}
		data_16_V_read {Type I LastRead 0 FirstWrite -1}
		data_17_V_read {Type I LastRead 0 FirstWrite -1}
		data_18_V_read {Type I LastRead 0 FirstWrite -1}
		data_19_V_read {Type I LastRead 0 FirstWrite -1}
		data_20_V_read {Type I LastRead 0 FirstWrite -1}
		data_21_V_read {Type I LastRead 0 FirstWrite -1}
		data_22_V_read {Type I LastRead 0 FirstWrite -1}
		data_23_V_read {Type I LastRead 0 FirstWrite -1}
		data_24_V_read {Type I LastRead 0 FirstWrite -1}
		data_25_V_read {Type I LastRead 0 FirstWrite -1}
		data_26_V_read {Type I LastRead 0 FirstWrite -1}
		data_27_V_read {Type I LastRead 0 FirstWrite -1}
		data_28_V_read {Type I LastRead 0 FirstWrite -1}
		data_29_V_read {Type I LastRead 0 FirstWrite -1}
		data_30_V_read {Type I LastRead 0 FirstWrite -1}
		data_31_V_read {Type I LastRead 0 FirstWrite -1}
		data_32_V_read {Type I LastRead 0 FirstWrite -1}
		data_33_V_read {Type I LastRead 0 FirstWrite -1}
		data_34_V_read {Type I LastRead 0 FirstWrite -1}
		data_35_V_read {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_4_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_5_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_6_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_16_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_17_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_18_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_19_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_20_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_21_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_22_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_23_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_28_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_29_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_30_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_31_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_32_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_33_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_34_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_35_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_4_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_3 {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "946", "Max" : "946"}
	, {"Name" : "Interval", "Min" : "946", "Max" : "946"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_data_0_V { ap_fifo {  { data_V_data_0_V_dout fifo_data 0 8 }  { data_V_data_0_V_empty_n fifo_status 0 1 }  { data_V_data_0_V_read fifo_update 1 1 } } }
	data_V_data_1_V { ap_fifo {  { data_V_data_1_V_dout fifo_data 0 8 }  { data_V_data_1_V_empty_n fifo_status 0 1 }  { data_V_data_1_V_read fifo_update 1 1 } } }
	data_V_data_2_V { ap_fifo {  { data_V_data_2_V_dout fifo_data 0 8 }  { data_V_data_2_V_empty_n fifo_status 0 1 }  { data_V_data_2_V_read fifo_update 1 1 } } }
	data_V_data_3_V { ap_fifo {  { data_V_data_3_V_dout fifo_data 0 8 }  { data_V_data_3_V_empty_n fifo_status 0 1 }  { data_V_data_3_V_read fifo_update 1 1 } } }
	res_V_data_0_V { ap_fifo {  { res_V_data_0_V_din fifo_data 1 8 }  { res_V_data_0_V_full_n fifo_status 0 1 }  { res_V_data_0_V_write fifo_update 1 1 } } }
	res_V_data_1_V { ap_fifo {  { res_V_data_1_V_din fifo_data 1 8 }  { res_V_data_1_V_full_n fifo_status 0 1 }  { res_V_data_1_V_write fifo_update 1 1 } } }
	res_V_data_2_V { ap_fifo {  { res_V_data_2_V_din fifo_data 1 8 }  { res_V_data_2_V_full_n fifo_status 0 1 }  { res_V_data_2_V_write fifo_update 1 1 } } }
	res_V_data_3_V { ap_fifo {  { res_V_data_3_V_din fifo_data 1 8 }  { res_V_data_3_V_full_n fifo_status 0 1 }  { res_V_data_3_V_write fifo_update 1 1 } } }
}
