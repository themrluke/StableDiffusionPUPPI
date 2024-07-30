set moduleName add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_s
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
set C_modelName {add<array,array<ap_fixed,1u>,array<ap_fixed<8,2,0,0,0>,1u>,config5>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data1_V_data_V int 8 regular {axi_s 0 volatile  { data1_V_data_V Data } }  }
	{ data2_V_data_V int 8 regular {fifo 0 volatile }  }
	{ res_V_data_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data1_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data2_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_data_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
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
	{ data1_V_data_V_TDATA sc_in sc_lv 8 signal 0 } 
	{ data1_V_data_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ data1_V_data_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data2_V_data_V_dout sc_in sc_lv 8 signal 1 } 
	{ data2_V_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ data2_V_data_V_read sc_out sc_logic 1 signal 1 } 
	{ res_V_data_V_din sc_out sc_lv 8 signal 2 } 
	{ res_V_data_V_full_n sc_in sc_logic 1 signal 2 } 
	{ res_V_data_V_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "data1_V_data_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data1_V_data_V", "role": "TDATA" }} , 
 	{ "name": "data1_V_data_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data1_V_data_V", "role": "TVALID" }} , 
 	{ "name": "data1_V_data_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data1_V_data_V", "role": "TREADY" }} , 
 	{ "name": "data2_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data2_V_data_V", "role": "dout" }} , 
 	{ "name": "data2_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2_V_data_V", "role": "empty_n" }} , 
 	{ "name": "data2_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data2_V_data_V", "role": "read" }} , 
 	{ "name": "res_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "res_V_data_V", "role": "din" }} , 
 	{ "name": "res_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data1_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data1_V_data_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data2_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data1_V_data_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_s {
		data1_V_data_V {Type I LastRead 1 FirstWrite -1}
		data2_V_data_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4099", "Max" : "4099"}
	, {"Name" : "Interval", "Min" : "4099", "Max" : "4099"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data1_V_data_V { axis {  { data1_V_data_V_TDATA in_data 0 8 }  { data1_V_data_V_TVALID in_vld 0 1 }  { data1_V_data_V_TREADY in_acc 1 1 } } }
	data2_V_data_V { ap_fifo {  { data2_V_data_V_dout fifo_data 0 8 }  { data2_V_data_V_empty_n fifo_status 0 1 }  { data2_V_data_V_read fifo_update 1 1 } } }
	res_V_data_V { ap_fifo {  { res_V_data_V_din fifo_data 1 8 }  { res_V_data_V_full_n fifo_status 0 1 }  { res_V_data_V_write fifo_update 1 1 } } }
}
