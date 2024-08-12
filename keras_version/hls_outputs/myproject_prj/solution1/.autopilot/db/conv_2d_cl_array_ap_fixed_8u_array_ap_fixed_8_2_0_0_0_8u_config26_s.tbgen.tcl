set moduleName conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_s
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
set C_modelName {conv_2d_cl<array<ap_fixed,8u>,array<ap_fixed<8,2,0,0,0>,8u>,config26>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_data_0_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_1_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_2_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_3_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_4_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_5_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_6_V int 8 regular {fifo 0 volatile }  }
	{ data_V_data_7_V int 8 regular {fifo 0 volatile }  }
	{ res_V_data_0_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_1_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_2_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_3_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_4_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_5_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_6_V int 8 regular {fifo 1 volatile }  }
	{ res_V_data_7_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_data_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_3_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_4_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_5_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_6_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_7_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_data_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_3_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_4_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_5_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_6_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_7_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
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
	{ data_V_data_4_V_dout sc_in sc_lv 8 signal 4 } 
	{ data_V_data_4_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ data_V_data_4_V_read sc_out sc_logic 1 signal 4 } 
	{ data_V_data_5_V_dout sc_in sc_lv 8 signal 5 } 
	{ data_V_data_5_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ data_V_data_5_V_read sc_out sc_logic 1 signal 5 } 
	{ data_V_data_6_V_dout sc_in sc_lv 8 signal 6 } 
	{ data_V_data_6_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ data_V_data_6_V_read sc_out sc_logic 1 signal 6 } 
	{ data_V_data_7_V_dout sc_in sc_lv 8 signal 7 } 
	{ data_V_data_7_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ data_V_data_7_V_read sc_out sc_logic 1 signal 7 } 
	{ res_V_data_0_V_din sc_out sc_lv 8 signal 8 } 
	{ res_V_data_0_V_full_n sc_in sc_logic 1 signal 8 } 
	{ res_V_data_0_V_write sc_out sc_logic 1 signal 8 } 
	{ res_V_data_1_V_din sc_out sc_lv 8 signal 9 } 
	{ res_V_data_1_V_full_n sc_in sc_logic 1 signal 9 } 
	{ res_V_data_1_V_write sc_out sc_logic 1 signal 9 } 
	{ res_V_data_2_V_din sc_out sc_lv 8 signal 10 } 
	{ res_V_data_2_V_full_n sc_in sc_logic 1 signal 10 } 
	{ res_V_data_2_V_write sc_out sc_logic 1 signal 10 } 
	{ res_V_data_3_V_din sc_out sc_lv 8 signal 11 } 
	{ res_V_data_3_V_full_n sc_in sc_logic 1 signal 11 } 
	{ res_V_data_3_V_write sc_out sc_logic 1 signal 11 } 
	{ res_V_data_4_V_din sc_out sc_lv 8 signal 12 } 
	{ res_V_data_4_V_full_n sc_in sc_logic 1 signal 12 } 
	{ res_V_data_4_V_write sc_out sc_logic 1 signal 12 } 
	{ res_V_data_5_V_din sc_out sc_lv 8 signal 13 } 
	{ res_V_data_5_V_full_n sc_in sc_logic 1 signal 13 } 
	{ res_V_data_5_V_write sc_out sc_logic 1 signal 13 } 
	{ res_V_data_6_V_din sc_out sc_lv 8 signal 14 } 
	{ res_V_data_6_V_full_n sc_in sc_logic 1 signal 14 } 
	{ res_V_data_6_V_write sc_out sc_logic 1 signal 14 } 
	{ res_V_data_7_V_din sc_out sc_lv 8 signal 15 } 
	{ res_V_data_7_V_full_n sc_in sc_logic 1 signal 15 } 
	{ res_V_data_7_V_write sc_out sc_logic 1 signal 15 } 
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
 	{ "name": "data_V_data_4_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_V_data_4_V", "role": "dout" }} , 
 	{ "name": "data_V_data_4_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_4_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_4_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_4_V", "role": "read" }} , 
 	{ "name": "data_V_data_5_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_V_data_5_V", "role": "dout" }} , 
 	{ "name": "data_V_data_5_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_5_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_5_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_5_V", "role": "read" }} , 
 	{ "name": "data_V_data_6_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_V_data_6_V", "role": "dout" }} , 
 	{ "name": "data_V_data_6_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_6_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_6_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_6_V", "role": "read" }} , 
 	{ "name": "data_V_data_7_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_V_data_7_V", "role": "dout" }} , 
 	{ "name": "data_V_data_7_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_7_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_7_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_7_V", "role": "read" }} , 
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
 	{ "name": "res_V_data_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_3_V", "role": "write" }} , 
 	{ "name": "res_V_data_4_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_4_V", "role": "din" }} , 
 	{ "name": "res_V_data_4_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_4_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_4_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_4_V", "role": "write" }} , 
 	{ "name": "res_V_data_5_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_5_V", "role": "din" }} , 
 	{ "name": "res_V_data_5_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_5_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_5_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_5_V", "role": "write" }} , 
 	{ "name": "res_V_data_6_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_6_V", "role": "din" }} , 
 	{ "name": "res_V_data_6_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_6_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_6_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_6_V", "role": "write" }} , 
 	{ "name": "res_V_data_7_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_7_V", "role": "din" }} , 
 	{ "name": "res_V_data_7_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_7_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_7_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_7_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "311", "EstimateLatencyMax" : "311",
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
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_4_V"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_5_V"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_6_V"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_7_V"}]},
			{"Name" : "kernel_data_V_7_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_8"}]},
			{"Name" : "kernel_data_V_7_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_9"}]},
			{"Name" : "kernel_data_V_7_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_10"}]},
			{"Name" : "kernel_data_V_7_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_11"}]},
			{"Name" : "kernel_data_V_7_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_12"}]},
			{"Name" : "kernel_data_V_7_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_13"}]},
			{"Name" : "kernel_data_V_7_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_14"}]},
			{"Name" : "kernel_data_V_7_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_15"}]},
			{"Name" : "kernel_data_V_7_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_16"}]},
			{"Name" : "kernel_data_V_7_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_17"}]},
			{"Name" : "kernel_data_V_7_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_18"}]},
			{"Name" : "kernel_data_V_7_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_19"}]},
			{"Name" : "kernel_data_V_7_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_20"}]},
			{"Name" : "kernel_data_V_7_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_21"}]},
			{"Name" : "kernel_data_V_7_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_22"}]},
			{"Name" : "kernel_data_V_7_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_23"}]},
			{"Name" : "kernel_data_V_7_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_32"}]},
			{"Name" : "kernel_data_V_7_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_33"}]},
			{"Name" : "kernel_data_V_7_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_34"}]},
			{"Name" : "kernel_data_V_7_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_35"}]},
			{"Name" : "kernel_data_V_7_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_36"}]},
			{"Name" : "kernel_data_V_7_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_37"}]},
			{"Name" : "kernel_data_V_7_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_38"}]},
			{"Name" : "kernel_data_V_7_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_39"}]},
			{"Name" : "kernel_data_V_7_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_40"}]},
			{"Name" : "kernel_data_V_7_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_41"}]},
			{"Name" : "kernel_data_V_7_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_42"}]},
			{"Name" : "kernel_data_V_7_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_43"}]},
			{"Name" : "kernel_data_V_7_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_44"}]},
			{"Name" : "kernel_data_V_7_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_45"}]},
			{"Name" : "kernel_data_V_7_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_46"}]},
			{"Name" : "kernel_data_V_7_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_47"}]},
			{"Name" : "kernel_data_V_7_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_56"}]},
			{"Name" : "kernel_data_V_7_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_57"}]},
			{"Name" : "kernel_data_V_7_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_58"}]},
			{"Name" : "kernel_data_V_7_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_59"}]},
			{"Name" : "kernel_data_V_7_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_60"}]},
			{"Name" : "kernel_data_V_7_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_61"}]},
			{"Name" : "kernel_data_V_7_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_62"}]},
			{"Name" : "kernel_data_V_7_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_63"}]},
			{"Name" : "kernel_data_V_7_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_64"}]},
			{"Name" : "kernel_data_V_7_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_65"}]},
			{"Name" : "kernel_data_V_7_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_66"}]},
			{"Name" : "kernel_data_V_7_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_67"}]},
			{"Name" : "kernel_data_V_7_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_68"}]},
			{"Name" : "kernel_data_V_7_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_69"}]},
			{"Name" : "kernel_data_V_7_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_70"}]},
			{"Name" : "kernel_data_V_7_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_71"}]},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_0"}]},
			{"Name" : "line_buffer_Array_V_7_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_0"}]},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_1"}]},
			{"Name" : "line_buffer_Array_V_7_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_1"}]},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_2"}]},
			{"Name" : "line_buffer_Array_V_7_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_2"}]},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_3"}]},
			{"Name" : "line_buffer_Array_V_7_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_3"}]},
			{"Name" : "line_buffer_Array_V_7_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_4"}]},
			{"Name" : "line_buffer_Array_V_7_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_4"}]},
			{"Name" : "line_buffer_Array_V_7_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_5"}]},
			{"Name" : "line_buffer_Array_V_7_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_5"}]},
			{"Name" : "line_buffer_Array_V_7_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_6"}]},
			{"Name" : "line_buffer_Array_V_7_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_6"}]},
			{"Name" : "line_buffer_Array_V_7_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_7"}]},
			{"Name" : "line_buffer_Array_V_7_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_7"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "sX"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "sY"}]},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "pY"}]},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "pX"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n", "res_stream_V_data_4_V_blk_n", "res_stream_V_data_5_V_blk_n", "res_stream_V_data_6_V_blk_n", "res_stream_V_data_7_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Parent" : "0", "Child" : ["2", "11"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "37", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
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
			{"Name" : "in_elem_data_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_7_V_read", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "res_stream_V_data_4_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_stream_V_data_4_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "res_stream_V_data_5_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_stream_V_data_5_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "res_stream_V_data_6_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_stream_V_data_6_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "res_stream_V_data_7_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_stream_V_data_7_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "kernel_data_V_7_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_0"}]},
			{"Name" : "line_buffer_Array_V_7_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_0"}]},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_1"}]},
			{"Name" : "line_buffer_Array_V_7_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_1"}]},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_2"}]},
			{"Name" : "line_buffer_Array_V_7_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_2"}]},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_3"}]},
			{"Name" : "line_buffer_Array_V_7_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_3"}]},
			{"Name" : "line_buffer_Array_V_7_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_4"}]},
			{"Name" : "line_buffer_Array_V_7_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_4"}]},
			{"Name" : "line_buffer_Array_V_7_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_5"}]},
			{"Name" : "line_buffer_Array_V_7_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_5"}]},
			{"Name" : "line_buffer_Array_V_7_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_6"}]},
			{"Name" : "line_buffer_Array_V_7_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_6"}]},
			{"Name" : "line_buffer_Array_V_7_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_7"}]},
			{"Name" : "line_buffer_Array_V_7_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_7"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "34", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
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
			{"Name" : "data_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_36_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_37_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_38_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_39_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_40_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_41_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_42_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_43_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_44_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_45_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_46_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_47_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_48_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_49_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_50_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_51_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_52_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_53_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_54_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_55_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_56_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_57_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_58_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_59_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_60_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_61_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_62_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_63_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_64_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_65_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_66_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_67_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_68_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_69_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_70_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_71_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103765", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s",
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103770", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s",
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103775", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s",
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103780", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s",
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_4_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103785", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s",
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_5_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103790", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s",
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_6_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103795", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s",
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
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_7_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103800", "Parent" : "2",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Parent" : "1", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s",
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
			{"Name" : "in_elem_data_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_36_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_37_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_38_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_39_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_40_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_41_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_42_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_43_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_44_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_45_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_46_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_47_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_56_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_57_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_58_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_59_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_60_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_61_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_62_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_63_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_64_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_65_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_66_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_67_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_68_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_69_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_70_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_71_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_0_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_0_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_1_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_1_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_2_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_2_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_3_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_3_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_4_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_4_U", "Parent" : "11"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_5_U", "Parent" : "11"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_5_U", "Parent" : "11"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_6_U", "Parent" : "11"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_6_U", "Parent" : "11"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_7_U", "Parent" : "11"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_7_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 37}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 37}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 37}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 37}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 37}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 37}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 37}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 37}
		kernel_data_V_7_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_71 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_7 {Type X LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_4_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_5_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_6_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_7_V_read {Type I LastRead 0 FirstWrite -1}
		res_stream_V_data_0_V {Type O LastRead -1 FirstWrite 37}
		res_stream_V_data_1_V {Type O LastRead -1 FirstWrite 37}
		res_stream_V_data_2_V {Type O LastRead -1 FirstWrite 37}
		res_stream_V_data_3_V {Type O LastRead -1 FirstWrite 37}
		res_stream_V_data_4_V {Type O LastRead -1 FirstWrite 37}
		res_stream_V_data_5_V {Type O LastRead -1 FirstWrite 37}
		res_stream_V_data_6_V {Type O LastRead -1 FirstWrite 37}
		res_stream_V_data_7_V {Type O LastRead -1 FirstWrite 37}
		kernel_data_V_7_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_71 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_7 {Type X LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0 {
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
		data_35_V_read {Type I LastRead 0 FirstWrite -1}
		data_36_V_read {Type I LastRead 0 FirstWrite -1}
		data_37_V_read {Type I LastRead 0 FirstWrite -1}
		data_38_V_read {Type I LastRead 0 FirstWrite -1}
		data_39_V_read {Type I LastRead 0 FirstWrite -1}
		data_40_V_read {Type I LastRead 0 FirstWrite -1}
		data_41_V_read {Type I LastRead 0 FirstWrite -1}
		data_42_V_read {Type I LastRead 0 FirstWrite -1}
		data_43_V_read {Type I LastRead 0 FirstWrite -1}
		data_44_V_read {Type I LastRead 0 FirstWrite -1}
		data_45_V_read {Type I LastRead 0 FirstWrite -1}
		data_46_V_read {Type I LastRead 0 FirstWrite -1}
		data_47_V_read {Type I LastRead 0 FirstWrite -1}
		data_48_V_read {Type I LastRead 0 FirstWrite -1}
		data_49_V_read {Type I LastRead 0 FirstWrite -1}
		data_50_V_read {Type I LastRead 0 FirstWrite -1}
		data_51_V_read {Type I LastRead 0 FirstWrite -1}
		data_52_V_read {Type I LastRead 0 FirstWrite -1}
		data_53_V_read {Type I LastRead 0 FirstWrite -1}
		data_54_V_read {Type I LastRead 0 FirstWrite -1}
		data_55_V_read {Type I LastRead 0 FirstWrite -1}
		data_56_V_read {Type I LastRead 0 FirstWrite -1}
		data_57_V_read {Type I LastRead 0 FirstWrite -1}
		data_58_V_read {Type I LastRead 0 FirstWrite -1}
		data_59_V_read {Type I LastRead 0 FirstWrite -1}
		data_60_V_read {Type I LastRead 0 FirstWrite -1}
		data_61_V_read {Type I LastRead 0 FirstWrite -1}
		data_62_V_read {Type I LastRead 0 FirstWrite -1}
		data_63_V_read {Type I LastRead 0 FirstWrite -1}
		data_64_V_read {Type I LastRead 0 FirstWrite -1}
		data_65_V_read {Type I LastRead 0 FirstWrite -1}
		data_66_V_read {Type I LastRead 0 FirstWrite -1}
		data_67_V_read {Type I LastRead 0 FirstWrite -1}
		data_68_V_read {Type I LastRead 0 FirstWrite -1}
		data_69_V_read {Type I LastRead 0 FirstWrite -1}
		data_70_V_read {Type I LastRead 0 FirstWrite -1}
		data_71_V_read {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_4_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_5_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_6_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_12_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_13_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_14_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_15_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_16_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_17_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_18_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_19_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_20_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_21_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_22_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_23_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_32_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_33_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_34_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_35_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_36_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_37_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_38_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_39_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_40_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_41_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_42_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_43_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_44_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_45_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_46_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_47_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_56_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_57_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_58_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_59_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_60_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_61_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_62_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_63_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_64_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_65_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_66_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_67_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_68_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_69_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_70_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_71_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_7_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_1_7 {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "311", "Max" : "311"}
	, {"Name" : "Interval", "Min" : "311", "Max" : "311"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_data_0_V { ap_fifo {  { data_V_data_0_V_dout fifo_data 0 8 }  { data_V_data_0_V_empty_n fifo_status 0 1 }  { data_V_data_0_V_read fifo_update 1 1 } } }
	data_V_data_1_V { ap_fifo {  { data_V_data_1_V_dout fifo_data 0 8 }  { data_V_data_1_V_empty_n fifo_status 0 1 }  { data_V_data_1_V_read fifo_update 1 1 } } }
	data_V_data_2_V { ap_fifo {  { data_V_data_2_V_dout fifo_data 0 8 }  { data_V_data_2_V_empty_n fifo_status 0 1 }  { data_V_data_2_V_read fifo_update 1 1 } } }
	data_V_data_3_V { ap_fifo {  { data_V_data_3_V_dout fifo_data 0 8 }  { data_V_data_3_V_empty_n fifo_status 0 1 }  { data_V_data_3_V_read fifo_update 1 1 } } }
	data_V_data_4_V { ap_fifo {  { data_V_data_4_V_dout fifo_data 0 8 }  { data_V_data_4_V_empty_n fifo_status 0 1 }  { data_V_data_4_V_read fifo_update 1 1 } } }
	data_V_data_5_V { ap_fifo {  { data_V_data_5_V_dout fifo_data 0 8 }  { data_V_data_5_V_empty_n fifo_status 0 1 }  { data_V_data_5_V_read fifo_update 1 1 } } }
	data_V_data_6_V { ap_fifo {  { data_V_data_6_V_dout fifo_data 0 8 }  { data_V_data_6_V_empty_n fifo_status 0 1 }  { data_V_data_6_V_read fifo_update 1 1 } } }
	data_V_data_7_V { ap_fifo {  { data_V_data_7_V_dout fifo_data 0 8 }  { data_V_data_7_V_empty_n fifo_status 0 1 }  { data_V_data_7_V_read fifo_update 1 1 } } }
	res_V_data_0_V { ap_fifo {  { res_V_data_0_V_din fifo_data 1 8 }  { res_V_data_0_V_full_n fifo_status 0 1 }  { res_V_data_0_V_write fifo_update 1 1 } } }
	res_V_data_1_V { ap_fifo {  { res_V_data_1_V_din fifo_data 1 8 }  { res_V_data_1_V_full_n fifo_status 0 1 }  { res_V_data_1_V_write fifo_update 1 1 } } }
	res_V_data_2_V { ap_fifo {  { res_V_data_2_V_din fifo_data 1 8 }  { res_V_data_2_V_full_n fifo_status 0 1 }  { res_V_data_2_V_write fifo_update 1 1 } } }
	res_V_data_3_V { ap_fifo {  { res_V_data_3_V_din fifo_data 1 8 }  { res_V_data_3_V_full_n fifo_status 0 1 }  { res_V_data_3_V_write fifo_update 1 1 } } }
	res_V_data_4_V { ap_fifo {  { res_V_data_4_V_din fifo_data 1 8 }  { res_V_data_4_V_full_n fifo_status 0 1 }  { res_V_data_4_V_write fifo_update 1 1 } } }
	res_V_data_5_V { ap_fifo {  { res_V_data_5_V_din fifo_data 1 8 }  { res_V_data_5_V_full_n fifo_status 0 1 }  { res_V_data_5_V_write fifo_update 1 1 } } }
	res_V_data_6_V { ap_fifo {  { res_V_data_6_V_din fifo_data 1 8 }  { res_V_data_6_V_full_n fifo_status 0 1 }  { res_V_data_6_V_write fifo_update 1 1 } } }
	res_V_data_7_V { ap_fifo {  { res_V_data_7_V_din fifo_data 1 8 }  { res_V_data_7_V_full_n fifo_status 0 1 }  { res_V_data_7_V_write fifo_update 1 1 } } }
}
