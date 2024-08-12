set moduleName myproject
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_images_V_data_0_V int 8 regular {axi_s 0 volatile  { input_images_V_data_0_V Data } }  }
	{ pos_enc_main_V_data_0_V int 8 regular {axi_s 0 volatile  { pos_enc_main_V_data_0_V Data } }  }
	{ pos_enc_main_V_data_1_V int 8 regular {axi_s 0 volatile  { pos_enc_main_V_data_1_V Data } }  }
	{ pos_enc_main_V_data_2_V int 8 regular {axi_s 0 volatile  { pos_enc_main_V_data_2_V Data } }  }
	{ pos_enc_main_V_data_3_V int 8 regular {axi_s 0 volatile  { pos_enc_main_V_data_3_V Data } }  }
	{ pos_enc_bottleneck_V_data_0_V int 8 regular {axi_s 0 volatile  { pos_enc_bottleneck_V_data_0_V Data } }  }
	{ pos_enc_bottleneck_V_data_1_V int 8 regular {axi_s 0 volatile  { pos_enc_bottleneck_V_data_1_V Data } }  }
	{ pos_enc_bottleneck_V_data_2_V int 8 regular {axi_s 0 volatile  { pos_enc_bottleneck_V_data_2_V Data } }  }
	{ pos_enc_bottleneck_V_data_3_V int 8 regular {axi_s 0 volatile  { pos_enc_bottleneck_V_data_3_V Data } }  }
	{ layer48_out_V_data_0_V int 8 regular {axi_s 1 volatile  { layer48_out_V_data_0_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_images_V_data_0_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "input_images.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "pos_enc_main_V_data_0_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pos_enc_main.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "pos_enc_main_V_data_1_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pos_enc_main.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "pos_enc_main_V_data_2_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pos_enc_main.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "pos_enc_main_V_data_3_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pos_enc_main.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "pos_enc_bottleneck_V_data_0_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pos_enc_bottleneck.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} , 
 	{ "Name" : "pos_enc_bottleneck_V_data_1_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pos_enc_bottleneck.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "pos_enc_bottleneck_V_data_2_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pos_enc_bottleneck.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}]} , 
 	{ "Name" : "pos_enc_bottleneck_V_data_3_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "pos_enc_bottleneck.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}]} , 
 	{ "Name" : "layer48_out_V_data_0_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "layer48_out.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}]} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ input_images_V_data_0_V_TDATA sc_in sc_lv 8 signal 0 } 
	{ pos_enc_main_V_data_0_V_TDATA sc_in sc_lv 8 signal 1 } 
	{ pos_enc_main_V_data_1_V_TDATA sc_in sc_lv 8 signal 2 } 
	{ pos_enc_main_V_data_2_V_TDATA sc_in sc_lv 8 signal 3 } 
	{ pos_enc_main_V_data_3_V_TDATA sc_in sc_lv 8 signal 4 } 
	{ pos_enc_bottleneck_V_data_0_V_TDATA sc_in sc_lv 8 signal 5 } 
	{ pos_enc_bottleneck_V_data_1_V_TDATA sc_in sc_lv 8 signal 6 } 
	{ pos_enc_bottleneck_V_data_2_V_TDATA sc_in sc_lv 8 signal 7 } 
	{ pos_enc_bottleneck_V_data_3_V_TDATA sc_in sc_lv 8 signal 8 } 
	{ layer48_out_V_data_0_V_TDATA sc_out sc_lv 8 signal 9 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ pos_enc_main_V_data_0_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ pos_enc_main_V_data_0_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ pos_enc_main_V_data_1_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ pos_enc_main_V_data_1_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ pos_enc_main_V_data_2_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ pos_enc_main_V_data_2_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ pos_enc_main_V_data_3_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ pos_enc_main_V_data_3_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ input_images_V_data_0_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_images_V_data_0_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ pos_enc_bottleneck_V_data_0_V_TVALID sc_in sc_logic 1 invld 5 } 
	{ pos_enc_bottleneck_V_data_0_V_TREADY sc_out sc_logic 1 inacc 5 } 
	{ pos_enc_bottleneck_V_data_1_V_TVALID sc_in sc_logic 1 invld 6 } 
	{ pos_enc_bottleneck_V_data_1_V_TREADY sc_out sc_logic 1 inacc 6 } 
	{ pos_enc_bottleneck_V_data_2_V_TVALID sc_in sc_logic 1 invld 7 } 
	{ pos_enc_bottleneck_V_data_2_V_TREADY sc_out sc_logic 1 inacc 7 } 
	{ pos_enc_bottleneck_V_data_3_V_TVALID sc_in sc_logic 1 invld 8 } 
	{ pos_enc_bottleneck_V_data_3_V_TREADY sc_out sc_logic 1 inacc 8 } 
	{ layer48_out_V_data_0_V_TVALID sc_out sc_logic 1 outvld 9 } 
	{ layer48_out_V_data_0_V_TREADY sc_in sc_logic 1 outacc 9 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_images_V_data_0_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_images_V_data_0_V", "role": "TDATA" }} , 
 	{ "name": "pos_enc_main_V_data_0_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pos_enc_main_V_data_0_V", "role": "TDATA" }} , 
 	{ "name": "pos_enc_main_V_data_1_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pos_enc_main_V_data_1_V", "role": "TDATA" }} , 
 	{ "name": "pos_enc_main_V_data_2_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pos_enc_main_V_data_2_V", "role": "TDATA" }} , 
 	{ "name": "pos_enc_main_V_data_3_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pos_enc_main_V_data_3_V", "role": "TDATA" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_0_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pos_enc_bottleneck_V_data_0_V", "role": "TDATA" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_1_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pos_enc_bottleneck_V_data_1_V", "role": "TDATA" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_2_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pos_enc_bottleneck_V_data_2_V", "role": "TDATA" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_3_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pos_enc_bottleneck_V_data_3_V", "role": "TDATA" }} , 
 	{ "name": "layer48_out_V_data_0_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layer48_out_V_data_0_V", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "pos_enc_main_V_data_0_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pos_enc_main_V_data_0_V", "role": "TVALID" }} , 
 	{ "name": "pos_enc_main_V_data_0_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pos_enc_main_V_data_0_V", "role": "TREADY" }} , 
 	{ "name": "pos_enc_main_V_data_1_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pos_enc_main_V_data_1_V", "role": "TVALID" }} , 
 	{ "name": "pos_enc_main_V_data_1_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pos_enc_main_V_data_1_V", "role": "TREADY" }} , 
 	{ "name": "pos_enc_main_V_data_2_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pos_enc_main_V_data_2_V", "role": "TVALID" }} , 
 	{ "name": "pos_enc_main_V_data_2_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pos_enc_main_V_data_2_V", "role": "TREADY" }} , 
 	{ "name": "pos_enc_main_V_data_3_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pos_enc_main_V_data_3_V", "role": "TVALID" }} , 
 	{ "name": "pos_enc_main_V_data_3_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pos_enc_main_V_data_3_V", "role": "TREADY" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "input_images_V_data_0_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_images_V_data_0_V", "role": "TVALID" }} , 
 	{ "name": "input_images_V_data_0_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_images_V_data_0_V", "role": "TREADY" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_0_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pos_enc_bottleneck_V_data_0_V", "role": "TVALID" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_0_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pos_enc_bottleneck_V_data_0_V", "role": "TREADY" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_1_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pos_enc_bottleneck_V_data_1_V", "role": "TVALID" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_1_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pos_enc_bottleneck_V_data_1_V", "role": "TREADY" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_2_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pos_enc_bottleneck_V_data_2_V", "role": "TVALID" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_2_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pos_enc_bottleneck_V_data_2_V", "role": "TREADY" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_3_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "pos_enc_bottleneck_V_data_3_V", "role": "TVALID" }} , 
 	{ "name": "pos_enc_bottleneck_V_data_3_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "pos_enc_bottleneck_V_data_3_V", "role": "TREADY" }} , 
 	{ "name": "layer48_out_V_data_0_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer48_out_V_data_0_V", "role": "TVALID" }} , 
 	{ "name": "layer48_out_V_data_0_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer48_out_V_data_0_V", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "7", "9", "10", "20", "21", "22", "38", "39", "40", "56", "57", "62", "63", "64", "84", "85", "86", "114", "115", "116", "117", "141", "142", "143", "144", "145", "161", "162", "163", "179", "180", "181", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5551", "EstimateLatencyMax" : "5551",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0", "ReadyCount" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0_ap_ready_count"},
			{"ID" : "7", "Name" : "add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0", "ReadyCount" : "add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0_ap_ready_count"},
			{"ID" : "57", "Name" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0", "ReadyCount" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "181", "Name" : "relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0"}],
		"Port" : [
			{"Name" : "input_images_V_data_0_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0", "Port" : "data1_V_data_V"}]},
			{"Name" : "pos_enc_main_V_data_0_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0", "Port" : "data_V_data_0_V"}]},
			{"Name" : "pos_enc_main_V_data_1_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0", "Port" : "data_V_data_1_V"}]},
			{"Name" : "pos_enc_main_V_data_2_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0", "Port" : "data_V_data_2_V"}]},
			{"Name" : "pos_enc_main_V_data_3_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0", "Port" : "data_V_data_3_V"}]},
			{"Name" : "pos_enc_bottleneck_V_data_0_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0", "Port" : "data_V_data_0_V"}]},
			{"Name" : "pos_enc_bottleneck_V_data_1_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0", "Port" : "data_V_data_1_V"}]},
			{"Name" : "pos_enc_bottleneck_V_data_2_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0", "Port" : "data_V_data_2_V"}]},
			{"Name" : "pos_enc_bottleneck_V_data_3_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0", "Port" : "data_V_data_3_V"}]},
			{"Name" : "layer48_out_V_data_0_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0", "Port" : "res_V_data_V"}]},
			{"Name" : "kernel_data_V_1632", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "kernel_data_V_1632"}]},
			{"Name" : "kernel_data_V_2633", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "kernel_data_V_2633"}]},
			{"Name" : "kernel_data_V_4635", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "kernel_data_V_4635"}]},
			{"Name" : "kernel_data_V_5636", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "kernel_data_V_5636"}]},
			{"Name" : "kernel_data_V_7638", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "kernel_data_V_7638"}]},
			{"Name" : "kernel_data_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "kernel_data_V_8"}]},
			{"Name" : "line_buffer_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "line_buffer_Array_V_0_0"}]},
			{"Name" : "line_buffer_Array_V_1631_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "line_buffer_Array_V_1631_0"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "sX_2"}]},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "sY_2"}]},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "pY_2"}]},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Port" : "pX_2"}]},
			{"Name" : "kernel_data_V_1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_4"}]},
			{"Name" : "kernel_data_V_1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_5"}]},
			{"Name" : "kernel_data_V_1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_6"}]},
			{"Name" : "kernel_data_V_1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_7"}]},
			{"Name" : "kernel_data_V_1_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_8"}]},
			{"Name" : "kernel_data_V_1_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_9"}]},
			{"Name" : "kernel_data_V_1_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_10"}]},
			{"Name" : "kernel_data_V_1_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_11"}]},
			{"Name" : "kernel_data_V_1_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_16"}]},
			{"Name" : "kernel_data_V_1_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_17"}]},
			{"Name" : "kernel_data_V_1_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_18"}]},
			{"Name" : "kernel_data_V_1_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_19"}]},
			{"Name" : "kernel_data_V_1_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_20"}]},
			{"Name" : "kernel_data_V_1_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_21"}]},
			{"Name" : "kernel_data_V_1_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_22"}]},
			{"Name" : "kernel_data_V_1_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_23"}]},
			{"Name" : "kernel_data_V_1_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_28"}]},
			{"Name" : "kernel_data_V_1_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_29"}]},
			{"Name" : "kernel_data_V_1_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_30"}]},
			{"Name" : "kernel_data_V_1_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_31"}]},
			{"Name" : "kernel_data_V_1_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_32"}]},
			{"Name" : "kernel_data_V_1_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_33"}]},
			{"Name" : "kernel_data_V_1_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_34"}]},
			{"Name" : "kernel_data_V_1_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "kernel_data_V_1_35"}]},
			{"Name" : "line_buffer_Array_V_1_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "line_buffer_Array_V_1_0_0"}]},
			{"Name" : "line_buffer_Array_V_1_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "line_buffer_Array_V_1_1_0"}]},
			{"Name" : "line_buffer_Array_V_1_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "line_buffer_Array_V_1_0_1"}]},
			{"Name" : "line_buffer_Array_V_1_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "line_buffer_Array_V_1_1_1"}]},
			{"Name" : "line_buffer_Array_V_1_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "line_buffer_Array_V_1_0_2"}]},
			{"Name" : "line_buffer_Array_V_1_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "line_buffer_Array_V_1_1_2"}]},
			{"Name" : "line_buffer_Array_V_1_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "line_buffer_Array_V_1_0_3"}]},
			{"Name" : "line_buffer_Array_V_1_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "line_buffer_Array_V_1_1_3"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "sX_1"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "sY_1"}]},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "pY_1"}]},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Port" : "pX_1"}]},
			{"Name" : "kernel_data_V_2_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_4"}]},
			{"Name" : "kernel_data_V_2_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_5"}]},
			{"Name" : "kernel_data_V_2_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_6"}]},
			{"Name" : "kernel_data_V_2_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_7"}]},
			{"Name" : "kernel_data_V_2_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_8"}]},
			{"Name" : "kernel_data_V_2_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_9"}]},
			{"Name" : "kernel_data_V_2_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_10"}]},
			{"Name" : "kernel_data_V_2_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_11"}]},
			{"Name" : "kernel_data_V_2_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_16"}]},
			{"Name" : "kernel_data_V_2_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_17"}]},
			{"Name" : "kernel_data_V_2_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_18"}]},
			{"Name" : "kernel_data_V_2_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_19"}]},
			{"Name" : "kernel_data_V_2_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_20"}]},
			{"Name" : "kernel_data_V_2_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_21"}]},
			{"Name" : "kernel_data_V_2_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_22"}]},
			{"Name" : "kernel_data_V_2_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_23"}]},
			{"Name" : "kernel_data_V_2_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_28"}]},
			{"Name" : "kernel_data_V_2_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_29"}]},
			{"Name" : "kernel_data_V_2_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_30"}]},
			{"Name" : "kernel_data_V_2_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_31"}]},
			{"Name" : "kernel_data_V_2_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_32"}]},
			{"Name" : "kernel_data_V_2_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_33"}]},
			{"Name" : "kernel_data_V_2_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_34"}]},
			{"Name" : "kernel_data_V_2_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "kernel_data_V_2_35"}]},
			{"Name" : "line_buffer_Array_V_2_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "line_buffer_Array_V_2_0_0"}]},
			{"Name" : "line_buffer_Array_V_2_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "line_buffer_Array_V_2_1_0"}]},
			{"Name" : "line_buffer_Array_V_2_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "line_buffer_Array_V_2_0_1"}]},
			{"Name" : "line_buffer_Array_V_2_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "line_buffer_Array_V_2_1_1"}]},
			{"Name" : "line_buffer_Array_V_2_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "line_buffer_Array_V_2_0_2"}]},
			{"Name" : "line_buffer_Array_V_2_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "line_buffer_Array_V_2_1_2"}]},
			{"Name" : "line_buffer_Array_V_2_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "line_buffer_Array_V_2_0_3"}]},
			{"Name" : "line_buffer_Array_V_2_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "line_buffer_Array_V_2_1_3"}]},
			{"Name" : "sX_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "sX_7"}]},
			{"Name" : "sY_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "sY_7"}]},
			{"Name" : "pY_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "pY_7"}]},
			{"Name" : "pX_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Port" : "pX_7"}]},
			{"Name" : "kernel_data_V_5_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_4"}]},
			{"Name" : "kernel_data_V_5_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_5"}]},
			{"Name" : "kernel_data_V_5_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_6"}]},
			{"Name" : "kernel_data_V_5_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_7"}]},
			{"Name" : "kernel_data_V_5_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_8"}]},
			{"Name" : "kernel_data_V_5_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_9"}]},
			{"Name" : "kernel_data_V_5_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_10"}]},
			{"Name" : "kernel_data_V_5_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_11"}]},
			{"Name" : "kernel_data_V_5_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_16"}]},
			{"Name" : "kernel_data_V_5_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_17"}]},
			{"Name" : "kernel_data_V_5_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_18"}]},
			{"Name" : "kernel_data_V_5_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_19"}]},
			{"Name" : "kernel_data_V_5_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_20"}]},
			{"Name" : "kernel_data_V_5_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_21"}]},
			{"Name" : "kernel_data_V_5_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_22"}]},
			{"Name" : "kernel_data_V_5_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_23"}]},
			{"Name" : "kernel_data_V_5_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_28"}]},
			{"Name" : "kernel_data_V_5_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_29"}]},
			{"Name" : "kernel_data_V_5_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_30"}]},
			{"Name" : "kernel_data_V_5_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_31"}]},
			{"Name" : "kernel_data_V_5_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_32"}]},
			{"Name" : "kernel_data_V_5_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_33"}]},
			{"Name" : "kernel_data_V_5_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_34"}]},
			{"Name" : "kernel_data_V_5_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "kernel_data_V_5_35"}]},
			{"Name" : "line_buffer_Array_V_5_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "line_buffer_Array_V_5_0_0"}]},
			{"Name" : "line_buffer_Array_V_5_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "line_buffer_Array_V_5_1_0"}]},
			{"Name" : "line_buffer_Array_V_5_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "line_buffer_Array_V_5_0_1"}]},
			{"Name" : "line_buffer_Array_V_5_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "line_buffer_Array_V_5_1_1"}]},
			{"Name" : "line_buffer_Array_V_5_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "line_buffer_Array_V_5_0_2"}]},
			{"Name" : "line_buffer_Array_V_5_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "line_buffer_Array_V_5_1_2"}]},
			{"Name" : "line_buffer_Array_V_5_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "line_buffer_Array_V_5_0_3"}]},
			{"Name" : "line_buffer_Array_V_5_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "line_buffer_Array_V_5_1_3"}]},
			{"Name" : "sX_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "sX_4"}]},
			{"Name" : "sY_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "sY_4"}]},
			{"Name" : "pY_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "pY_4"}]},
			{"Name" : "pX_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Port" : "pX_4"}]},
			{"Name" : "kernel_data_V_7_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_8"}]},
			{"Name" : "kernel_data_V_7_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_9"}]},
			{"Name" : "kernel_data_V_7_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_10"}]},
			{"Name" : "kernel_data_V_7_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_11"}]},
			{"Name" : "kernel_data_V_7_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_12"}]},
			{"Name" : "kernel_data_V_7_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_13"}]},
			{"Name" : "kernel_data_V_7_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_14"}]},
			{"Name" : "kernel_data_V_7_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_15"}]},
			{"Name" : "kernel_data_V_7_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_16"}]},
			{"Name" : "kernel_data_V_7_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_17"}]},
			{"Name" : "kernel_data_V_7_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_18"}]},
			{"Name" : "kernel_data_V_7_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_19"}]},
			{"Name" : "kernel_data_V_7_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_20"}]},
			{"Name" : "kernel_data_V_7_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_21"}]},
			{"Name" : "kernel_data_V_7_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_22"}]},
			{"Name" : "kernel_data_V_7_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_23"}]},
			{"Name" : "kernel_data_V_7_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_32"}]},
			{"Name" : "kernel_data_V_7_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_33"}]},
			{"Name" : "kernel_data_V_7_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_34"}]},
			{"Name" : "kernel_data_V_7_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_35"}]},
			{"Name" : "kernel_data_V_7_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_36"}]},
			{"Name" : "kernel_data_V_7_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_37"}]},
			{"Name" : "kernel_data_V_7_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_38"}]},
			{"Name" : "kernel_data_V_7_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_39"}]},
			{"Name" : "kernel_data_V_7_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_40"}]},
			{"Name" : "kernel_data_V_7_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_41"}]},
			{"Name" : "kernel_data_V_7_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_42"}]},
			{"Name" : "kernel_data_V_7_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_43"}]},
			{"Name" : "kernel_data_V_7_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_44"}]},
			{"Name" : "kernel_data_V_7_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_45"}]},
			{"Name" : "kernel_data_V_7_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_46"}]},
			{"Name" : "kernel_data_V_7_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_47"}]},
			{"Name" : "kernel_data_V_7_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_56"}]},
			{"Name" : "kernel_data_V_7_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_57"}]},
			{"Name" : "kernel_data_V_7_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_58"}]},
			{"Name" : "kernel_data_V_7_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_59"}]},
			{"Name" : "kernel_data_V_7_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_60"}]},
			{"Name" : "kernel_data_V_7_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_61"}]},
			{"Name" : "kernel_data_V_7_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_62"}]},
			{"Name" : "kernel_data_V_7_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_63"}]},
			{"Name" : "kernel_data_V_7_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_64"}]},
			{"Name" : "kernel_data_V_7_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_65"}]},
			{"Name" : "kernel_data_V_7_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_66"}]},
			{"Name" : "kernel_data_V_7_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_67"}]},
			{"Name" : "kernel_data_V_7_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_68"}]},
			{"Name" : "kernel_data_V_7_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_69"}]},
			{"Name" : "kernel_data_V_7_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_70"}]},
			{"Name" : "kernel_data_V_7_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "kernel_data_V_7_71"}]},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_0_0"}]},
			{"Name" : "line_buffer_Array_V_7_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_1_0"}]},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_0_1"}]},
			{"Name" : "line_buffer_Array_V_7_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_1_1"}]},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_0_2"}]},
			{"Name" : "line_buffer_Array_V_7_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_1_2"}]},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_0_3"}]},
			{"Name" : "line_buffer_Array_V_7_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_1_3"}]},
			{"Name" : "line_buffer_Array_V_7_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_0_4"}]},
			{"Name" : "line_buffer_Array_V_7_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_1_4"}]},
			{"Name" : "line_buffer_Array_V_7_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_0_5"}]},
			{"Name" : "line_buffer_Array_V_7_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_1_5"}]},
			{"Name" : "line_buffer_Array_V_7_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_0_6"}]},
			{"Name" : "line_buffer_Array_V_7_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_1_6"}]},
			{"Name" : "line_buffer_Array_V_7_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_0_7"}]},
			{"Name" : "line_buffer_Array_V_7_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "line_buffer_Array_V_7_1_7"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "sX"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "sY"}]},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "pY"}]},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Port" : "pX"}]},
			{"Name" : "kernel_data_V_6_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_8"}]},
			{"Name" : "kernel_data_V_6_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_9"}]},
			{"Name" : "kernel_data_V_6_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_10"}]},
			{"Name" : "kernel_data_V_6_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_11"}]},
			{"Name" : "kernel_data_V_6_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_12"}]},
			{"Name" : "kernel_data_V_6_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_13"}]},
			{"Name" : "kernel_data_V_6_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_14"}]},
			{"Name" : "kernel_data_V_6_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_15"}]},
			{"Name" : "kernel_data_V_6_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_16"}]},
			{"Name" : "kernel_data_V_6_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_17"}]},
			{"Name" : "kernel_data_V_6_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_18"}]},
			{"Name" : "kernel_data_V_6_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_19"}]},
			{"Name" : "kernel_data_V_6_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_20"}]},
			{"Name" : "kernel_data_V_6_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_21"}]},
			{"Name" : "kernel_data_V_6_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_22"}]},
			{"Name" : "kernel_data_V_6_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_23"}]},
			{"Name" : "kernel_data_V_6_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_32"}]},
			{"Name" : "kernel_data_V_6_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_33"}]},
			{"Name" : "kernel_data_V_6_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_34"}]},
			{"Name" : "kernel_data_V_6_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_35"}]},
			{"Name" : "kernel_data_V_6_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_36"}]},
			{"Name" : "kernel_data_V_6_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_37"}]},
			{"Name" : "kernel_data_V_6_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_38"}]},
			{"Name" : "kernel_data_V_6_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_39"}]},
			{"Name" : "kernel_data_V_6_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_40"}]},
			{"Name" : "kernel_data_V_6_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_41"}]},
			{"Name" : "kernel_data_V_6_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_42"}]},
			{"Name" : "kernel_data_V_6_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_43"}]},
			{"Name" : "kernel_data_V_6_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_44"}]},
			{"Name" : "kernel_data_V_6_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_45"}]},
			{"Name" : "kernel_data_V_6_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_46"}]},
			{"Name" : "kernel_data_V_6_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_47"}]},
			{"Name" : "kernel_data_V_6_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_56"}]},
			{"Name" : "kernel_data_V_6_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_57"}]},
			{"Name" : "kernel_data_V_6_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_58"}]},
			{"Name" : "kernel_data_V_6_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_59"}]},
			{"Name" : "kernel_data_V_6_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_60"}]},
			{"Name" : "kernel_data_V_6_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_61"}]},
			{"Name" : "kernel_data_V_6_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_62"}]},
			{"Name" : "kernel_data_V_6_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_63"}]},
			{"Name" : "kernel_data_V_6_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_64"}]},
			{"Name" : "kernel_data_V_6_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_65"}]},
			{"Name" : "kernel_data_V_6_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_66"}]},
			{"Name" : "kernel_data_V_6_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_67"}]},
			{"Name" : "kernel_data_V_6_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_68"}]},
			{"Name" : "kernel_data_V_6_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_69"}]},
			{"Name" : "kernel_data_V_6_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_70"}]},
			{"Name" : "kernel_data_V_6_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "kernel_data_V_6_71"}]},
			{"Name" : "line_buffer_Array_V_6_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_0_0"}]},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_1_0"}]},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_0_1"}]},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_1_1"}]},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_0_2"}]},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_1_2"}]},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_0_3"}]},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_1_3"}]},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_0_4"}]},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_1_4"}]},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_0_5"}]},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_1_5"}]},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_0_6"}]},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_1_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_0_7"}]},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "line_buffer_Array_V_6_1_7"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "sX_3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "sY_3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "pY_3"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Port" : "pX_3"}]},
			{"Name" : "kernel_data_V_3_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_4"}]},
			{"Name" : "kernel_data_V_3_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_5"}]},
			{"Name" : "kernel_data_V_3_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_6"}]},
			{"Name" : "kernel_data_V_3_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_7"}]},
			{"Name" : "kernel_data_V_3_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_8"}]},
			{"Name" : "kernel_data_V_3_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_9"}]},
			{"Name" : "kernel_data_V_3_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_10"}]},
			{"Name" : "kernel_data_V_3_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_11"}]},
			{"Name" : "kernel_data_V_3_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_16"}]},
			{"Name" : "kernel_data_V_3_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_17"}]},
			{"Name" : "kernel_data_V_3_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_18"}]},
			{"Name" : "kernel_data_V_3_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_19"}]},
			{"Name" : "kernel_data_V_3_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_20"}]},
			{"Name" : "kernel_data_V_3_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_21"}]},
			{"Name" : "kernel_data_V_3_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_22"}]},
			{"Name" : "kernel_data_V_3_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_23"}]},
			{"Name" : "kernel_data_V_3_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_28"}]},
			{"Name" : "kernel_data_V_3_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_29"}]},
			{"Name" : "kernel_data_V_3_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_30"}]},
			{"Name" : "kernel_data_V_3_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_31"}]},
			{"Name" : "kernel_data_V_3_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_32"}]},
			{"Name" : "kernel_data_V_3_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_33"}]},
			{"Name" : "kernel_data_V_3_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_34"}]},
			{"Name" : "kernel_data_V_3_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "kernel_data_V_3_35"}]},
			{"Name" : "line_buffer_Array_V_3_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "line_buffer_Array_V_3_0_0"}]},
			{"Name" : "line_buffer_Array_V_3_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "line_buffer_Array_V_3_1_0"}]},
			{"Name" : "line_buffer_Array_V_3_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "line_buffer_Array_V_3_0_1"}]},
			{"Name" : "line_buffer_Array_V_3_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "line_buffer_Array_V_3_1_1"}]},
			{"Name" : "line_buffer_Array_V_3_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "line_buffer_Array_V_3_0_2"}]},
			{"Name" : "line_buffer_Array_V_3_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "line_buffer_Array_V_3_1_2"}]},
			{"Name" : "line_buffer_Array_V_3_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "line_buffer_Array_V_3_0_3"}]},
			{"Name" : "line_buffer_Array_V_3_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "line_buffer_Array_V_3_1_3"}]},
			{"Name" : "sX_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "sX_6"}]},
			{"Name" : "sY_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "sY_6"}]},
			{"Name" : "pY_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "pY_6"}]},
			{"Name" : "pX_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Port" : "pX_6"}]},
			{"Name" : "kernel_data_V_4_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_4"}]},
			{"Name" : "kernel_data_V_4_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_5"}]},
			{"Name" : "kernel_data_V_4_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_6"}]},
			{"Name" : "kernel_data_V_4_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_7"}]},
			{"Name" : "kernel_data_V_4_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_8"}]},
			{"Name" : "kernel_data_V_4_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_9"}]},
			{"Name" : "kernel_data_V_4_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_10"}]},
			{"Name" : "kernel_data_V_4_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_11"}]},
			{"Name" : "kernel_data_V_4_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_16"}]},
			{"Name" : "kernel_data_V_4_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_17"}]},
			{"Name" : "kernel_data_V_4_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_18"}]},
			{"Name" : "kernel_data_V_4_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_19"}]},
			{"Name" : "kernel_data_V_4_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_20"}]},
			{"Name" : "kernel_data_V_4_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_21"}]},
			{"Name" : "kernel_data_V_4_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_22"}]},
			{"Name" : "kernel_data_V_4_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_23"}]},
			{"Name" : "kernel_data_V_4_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_28"}]},
			{"Name" : "kernel_data_V_4_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_29"}]},
			{"Name" : "kernel_data_V_4_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_30"}]},
			{"Name" : "kernel_data_V_4_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_31"}]},
			{"Name" : "kernel_data_V_4_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_32"}]},
			{"Name" : "kernel_data_V_4_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_33"}]},
			{"Name" : "kernel_data_V_4_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_34"}]},
			{"Name" : "kernel_data_V_4_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "kernel_data_V_4_35"}]},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "line_buffer_Array_V_4_0_0"}]},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "line_buffer_Array_V_4_1_0"}]},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "line_buffer_Array_V_4_0_1"}]},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "line_buffer_Array_V_4_1_1"}]},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "line_buffer_Array_V_4_0_2"}]},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "line_buffer_Array_V_4_1_2"}]},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "line_buffer_Array_V_4_0_3"}]},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "line_buffer_Array_V_4_1_3"}]},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "sX_5"}]},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "sY_5"}]},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "pY_5"}]},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Port" : "pX_5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "770", "EstimateLatencyMax" : "770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res1_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "res1_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res1_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "res1_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res1_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "res1_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res1_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "res1_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res2_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "res2_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res2_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "res2_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res2_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "res2_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res2_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "142", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "res2_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0.regslice_both_data_V_data_0_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0.regslice_both_data_V_data_1_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0.regslice_both_data_V_data_2_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_U0.regslice_both_data_V_data_3_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0", "Parent" : "0",
		"CDFG" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "773", "EstimateLatencyMax" : "773",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
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
			{"Name" : "data2_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "data2_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_U0.regslice_both_data1_V_data_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_U0", "Parent" : "0",
		"CDFG" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "927", "EstimateLatencyMax" : "927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "7",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53bml_U",
		"Port" : [
			{"Name" : "data_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "data_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "933", "EstimateLatencyMax" : "933",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0_U",
		"Port" : [
			{"Name" : "data_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "data_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "kernel_data_V_1632", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "kernel_data_V_1632"}]},
			{"Name" : "kernel_data_V_2633", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "kernel_data_V_2633"}]},
			{"Name" : "kernel_data_V_4635", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "kernel_data_V_4635"}]},
			{"Name" : "kernel_data_V_5636", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "kernel_data_V_5636"}]},
			{"Name" : "kernel_data_V_7638", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "kernel_data_V_7638"}]},
			{"Name" : "kernel_data_V_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "kernel_data_V_8"}]},
			{"Name" : "line_buffer_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "line_buffer_Array_V_0_0"}]},
			{"Name" : "line_buffer_Array_V_1631_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "line_buffer_Array_V_1631_0"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "sX_2"}]},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "sY_2"}]},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "pY_2"}]},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Port" : "pX_2"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n"]}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153", "Parent" : "10", "Child" : ["12", "17"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_elem_data_V_read", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "kernel_data_V_1632", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2633", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4635", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5636", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7638", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158", "Port" : "line_buffer_Array_V_0_0"}]},
			{"Name" : "line_buffer_Array_V_1631_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158", "Port" : "line_buffer_Array_V_1631_0"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145", "Parent" : "11", "Child" : ["13", "14", "15", "16"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
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
			{"Name" : "data_8_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s_fu_815", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s",
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
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s_fu_820", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s",
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
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s_fu_825", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s",
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
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0_fu_145.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s_fu_830", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s",
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158", "Parent" : "11", "Child" : ["18", "19"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s",
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
			{"Name" : "in_elem_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1631_0", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158.line_buffer_Array_V_0_0_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s_fu_153.call_ret8_shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s_fu_158.line_buffer_Array_V_1631_0_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "10",
		"StartFifo" : "start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_U0", "Parent" : "0",
		"CDFG" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "927", "EstimateLatencyMax" : "927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "20",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54bnm_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "945", "EstimateLatencyMax" : "945",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "21",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "38", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "kernel_data_V_1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_4"}]},
			{"Name" : "kernel_data_V_1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_5"}]},
			{"Name" : "kernel_data_V_1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_6"}]},
			{"Name" : "kernel_data_V_1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_7"}]},
			{"Name" : "kernel_data_V_1_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_8"}]},
			{"Name" : "kernel_data_V_1_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_9"}]},
			{"Name" : "kernel_data_V_1_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_10"}]},
			{"Name" : "kernel_data_V_1_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_11"}]},
			{"Name" : "kernel_data_V_1_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_16"}]},
			{"Name" : "kernel_data_V_1_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_17"}]},
			{"Name" : "kernel_data_V_1_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_18"}]},
			{"Name" : "kernel_data_V_1_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_19"}]},
			{"Name" : "kernel_data_V_1_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_20"}]},
			{"Name" : "kernel_data_V_1_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_21"}]},
			{"Name" : "kernel_data_V_1_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_22"}]},
			{"Name" : "kernel_data_V_1_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_23"}]},
			{"Name" : "kernel_data_V_1_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_28"}]},
			{"Name" : "kernel_data_V_1_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_29"}]},
			{"Name" : "kernel_data_V_1_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_30"}]},
			{"Name" : "kernel_data_V_1_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_31"}]},
			{"Name" : "kernel_data_V_1_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_32"}]},
			{"Name" : "kernel_data_V_1_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_33"}]},
			{"Name" : "kernel_data_V_1_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_34"}]},
			{"Name" : "kernel_data_V_1_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "kernel_data_V_1_35"}]},
			{"Name" : "line_buffer_Array_V_1_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "line_buffer_Array_V_1_0_0"}]},
			{"Name" : "line_buffer_Array_V_1_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "line_buffer_Array_V_1_1_0"}]},
			{"Name" : "line_buffer_Array_V_1_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "line_buffer_Array_V_1_0_1"}]},
			{"Name" : "line_buffer_Array_V_1_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "line_buffer_Array_V_1_1_1"}]},
			{"Name" : "line_buffer_Array_V_1_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "line_buffer_Array_V_1_0_2"}]},
			{"Name" : "line_buffer_Array_V_1_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "line_buffer_Array_V_1_1_2"}]},
			{"Name" : "line_buffer_Array_V_1_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "line_buffer_Array_V_1_0_3"}]},
			{"Name" : "line_buffer_Array_V_1_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "line_buffer_Array_V_1_1_3"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "sX_1"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "sY_1"}]},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "pY_1"}]},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Port" : "pX_1"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n"]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249", "Parent" : "22", "Child" : ["24", "29"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "19", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
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
			{"Name" : "kernel_data_V_1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_1_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Port" : "line_buffer_Array_V_1_0_0"}]},
			{"Name" : "line_buffer_Array_V_1_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Port" : "line_buffer_Array_V_1_1_0"}]},
			{"Name" : "line_buffer_Array_V_1_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Port" : "line_buffer_Array_V_1_0_1"}]},
			{"Name" : "line_buffer_Array_V_1_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Port" : "line_buffer_Array_V_1_1_1"}]},
			{"Name" : "line_buffer_Array_V_1_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Port" : "line_buffer_Array_V_1_0_2"}]},
			{"Name" : "line_buffer_Array_V_1_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Port" : "line_buffer_Array_V_1_1_2"}]},
			{"Name" : "line_buffer_Array_V_1_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Port" : "line_buffer_Array_V_1_0_3"}]},
			{"Name" : "line_buffer_Array_V_1_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Port" : "line_buffer_Array_V_1_1_3"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config10_mult_0_0_0_0_0_fu_217", "Parent" : "23", "Child" : ["25", "26", "27", "28"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config10_mult_0_0_0_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "16", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
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
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config10_mult_0_0_0_0_0_fu_217.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s_fu_8918", "Parent" : "24",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s",
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
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config10_mult_0_0_0_0_0_fu_217.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s_fu_8923", "Parent" : "24",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s",
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
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config10_mult_0_0_0_0_0_fu_217.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s_fu_8928", "Parent" : "24",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s",
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
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config10_mult_0_0_0_0_0_fu_217.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s_fu_8933", "Parent" : "24",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s",
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257", "Parent" : "23", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s",
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
			{"Name" : "line_buffer_Array_V_1_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257.line_buffer_Array_V_1_0_0_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257.line_buffer_Array_V_1_1_0_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257.line_buffer_Array_V_1_0_1_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257.line_buffer_Array_V_1_1_1_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257.line_buffer_Array_V_1_0_2_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257.line_buffer_Array_V_1_1_2_U", "Parent" : "29"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257.line_buffer_Array_V_1_0_3_U", "Parent" : "29"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_249.call_ret7_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s_fu_257.line_buffer_Array_V_1_1_3_U", "Parent" : "29"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "22",
		"StartFifo" : "start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_U0", "Parent" : "0",
		"CDFG" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "859", "EstimateLatencyMax" : "859",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "38",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55bom_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "40", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "867", "EstimateLatencyMax" : "867",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "39",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "kernel_data_V_2_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_4"}]},
			{"Name" : "kernel_data_V_2_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_5"}]},
			{"Name" : "kernel_data_V_2_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_6"}]},
			{"Name" : "kernel_data_V_2_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_7"}]},
			{"Name" : "kernel_data_V_2_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_8"}]},
			{"Name" : "kernel_data_V_2_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_9"}]},
			{"Name" : "kernel_data_V_2_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_10"}]},
			{"Name" : "kernel_data_V_2_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_11"}]},
			{"Name" : "kernel_data_V_2_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_16"}]},
			{"Name" : "kernel_data_V_2_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_17"}]},
			{"Name" : "kernel_data_V_2_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_18"}]},
			{"Name" : "kernel_data_V_2_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_19"}]},
			{"Name" : "kernel_data_V_2_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_20"}]},
			{"Name" : "kernel_data_V_2_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_21"}]},
			{"Name" : "kernel_data_V_2_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_22"}]},
			{"Name" : "kernel_data_V_2_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_23"}]},
			{"Name" : "kernel_data_V_2_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_28"}]},
			{"Name" : "kernel_data_V_2_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_29"}]},
			{"Name" : "kernel_data_V_2_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_30"}]},
			{"Name" : "kernel_data_V_2_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_31"}]},
			{"Name" : "kernel_data_V_2_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_32"}]},
			{"Name" : "kernel_data_V_2_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_33"}]},
			{"Name" : "kernel_data_V_2_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_34"}]},
			{"Name" : "kernel_data_V_2_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "kernel_data_V_2_35"}]},
			{"Name" : "line_buffer_Array_V_2_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "line_buffer_Array_V_2_0_0"}]},
			{"Name" : "line_buffer_Array_V_2_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "line_buffer_Array_V_2_1_0"}]},
			{"Name" : "line_buffer_Array_V_2_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "line_buffer_Array_V_2_0_1"}]},
			{"Name" : "line_buffer_Array_V_2_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "line_buffer_Array_V_2_1_1"}]},
			{"Name" : "line_buffer_Array_V_2_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "line_buffer_Array_V_2_0_2"}]},
			{"Name" : "line_buffer_Array_V_2_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "line_buffer_Array_V_2_1_2"}]},
			{"Name" : "line_buffer_Array_V_2_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "line_buffer_Array_V_2_0_3"}]},
			{"Name" : "line_buffer_Array_V_2_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "line_buffer_Array_V_2_1_3"}]},
			{"Name" : "sX_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "sX_7"}]},
			{"Name" : "sY_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "sY_7"}]},
			{"Name" : "pY_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "pY_7"}]},
			{"Name" : "pX_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Port" : "pX_7"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n"]}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249", "Parent" : "40", "Child" : ["42", "47"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s",
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
			{"Name" : "kernel_data_V_2_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_2_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Port" : "line_buffer_Array_V_2_0_0"}]},
			{"Name" : "line_buffer_Array_V_2_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Port" : "line_buffer_Array_V_2_1_0"}]},
			{"Name" : "line_buffer_Array_V_2_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Port" : "line_buffer_Array_V_2_0_1"}]},
			{"Name" : "line_buffer_Array_V_2_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Port" : "line_buffer_Array_V_2_1_1"}]},
			{"Name" : "line_buffer_Array_V_2_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Port" : "line_buffer_Array_V_2_0_2"}]},
			{"Name" : "line_buffer_Array_V_2_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Port" : "line_buffer_Array_V_2_1_2"}]},
			{"Name" : "line_buffer_Array_V_2_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Port" : "line_buffer_Array_V_2_0_3"}]},
			{"Name" : "line_buffer_Array_V_2_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Port" : "line_buffer_Array_V_2_1_3"}]},
			{"Name" : "sX_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_7", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config14_mult_0_0_0_0_0_fu_217", "Parent" : "41", "Child" : ["43", "44", "45", "46"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config14_mult_0_0_0_0_0",
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
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config14_mult_0_0_0_0_0_fu_217.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s_fu_14044", "Parent" : "42",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s",
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
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config14_mult_0_0_0_0_0_fu_217.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s_fu_14049", "Parent" : "42",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s",
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
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config14_mult_0_0_0_0_0_fu_217.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s_fu_14054", "Parent" : "42",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s",
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
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config14_mult_0_0_0_0_0_fu_217.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s_fu_14059", "Parent" : "42",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s",
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257", "Parent" : "41", "Child" : ["48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s",
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
			{"Name" : "line_buffer_Array_V_2_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257.line_buffer_Array_V_2_0_0_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257.line_buffer_Array_V_2_1_0_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257.line_buffer_Array_V_2_0_1_U", "Parent" : "47"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257.line_buffer_Array_V_2_1_1_U", "Parent" : "47"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257.line_buffer_Array_V_2_0_2_U", "Parent" : "47"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257.line_buffer_Array_V_2_1_2_U", "Parent" : "47"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257.line_buffer_Array_V_2_0_3_U", "Parent" : "47"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_249.call_ret6_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s_fu_257.line_buffer_Array_V_2_1_3_U", "Parent" : "47"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "40",
		"StartFifo" : "start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "40", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0", "Parent" : "0", "Child" : ["58", "59", "60", "61"],
		"CDFG" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.regslice_both_data_V_data_0_V_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.regslice_both_data_V_data_1_V_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.regslice_both_data_V_data_2_V_U", "Parent" : "57"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_U0.regslice_both_data_V_data_3_V_U", "Parent" : "57"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0", "Parent" : "0",
		"CDFG" : "add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "57",
		"StartFifo" : "start_for_add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0_U",
		"Port" : [
			{"Name" : "data1_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "data1_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data1_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "data1_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data1_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "data1_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data1_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "data1_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "data2_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "data2_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "data2_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "data2_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_U0", "Parent" : "0",
		"CDFG" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "275", "EstimateLatencyMax" : "275",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "62",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56bpm_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "235",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "236",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "237",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0", "Parent" : "0", "Child" : ["65"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "294", "EstimateLatencyMax" : "294",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "63",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "235",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "236",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "237",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "238",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "239",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "240",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "241",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "242",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "res_stream_V_data_4_V"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "243",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "res_stream_V_data_5_V"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "244",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "res_stream_V_data_6_V"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "245",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "res_stream_V_data_7_V"}]},
			{"Name" : "kernel_data_V_5_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_4"}]},
			{"Name" : "kernel_data_V_5_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_5"}]},
			{"Name" : "kernel_data_V_5_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_6"}]},
			{"Name" : "kernel_data_V_5_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_7"}]},
			{"Name" : "kernel_data_V_5_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_8"}]},
			{"Name" : "kernel_data_V_5_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_9"}]},
			{"Name" : "kernel_data_V_5_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_10"}]},
			{"Name" : "kernel_data_V_5_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_11"}]},
			{"Name" : "kernel_data_V_5_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_16"}]},
			{"Name" : "kernel_data_V_5_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_17"}]},
			{"Name" : "kernel_data_V_5_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_18"}]},
			{"Name" : "kernel_data_V_5_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_19"}]},
			{"Name" : "kernel_data_V_5_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_20"}]},
			{"Name" : "kernel_data_V_5_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_21"}]},
			{"Name" : "kernel_data_V_5_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_22"}]},
			{"Name" : "kernel_data_V_5_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_23"}]},
			{"Name" : "kernel_data_V_5_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_28"}]},
			{"Name" : "kernel_data_V_5_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_29"}]},
			{"Name" : "kernel_data_V_5_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_30"}]},
			{"Name" : "kernel_data_V_5_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_31"}]},
			{"Name" : "kernel_data_V_5_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_32"}]},
			{"Name" : "kernel_data_V_5_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_33"}]},
			{"Name" : "kernel_data_V_5_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_34"}]},
			{"Name" : "kernel_data_V_5_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "kernel_data_V_5_35"}]},
			{"Name" : "line_buffer_Array_V_5_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "line_buffer_Array_V_5_0_0"}]},
			{"Name" : "line_buffer_Array_V_5_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "line_buffer_Array_V_5_1_0"}]},
			{"Name" : "line_buffer_Array_V_5_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "line_buffer_Array_V_5_0_1"}]},
			{"Name" : "line_buffer_Array_V_5_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "line_buffer_Array_V_5_1_1"}]},
			{"Name" : "line_buffer_Array_V_5_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "line_buffer_Array_V_5_0_2"}]},
			{"Name" : "line_buffer_Array_V_5_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "line_buffer_Array_V_5_1_2"}]},
			{"Name" : "line_buffer_Array_V_5_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "line_buffer_Array_V_5_0_3"}]},
			{"Name" : "line_buffer_Array_V_5_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "line_buffer_Array_V_5_1_3"}]},
			{"Name" : "sX_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "sX_4"}]},
			{"Name" : "sY_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "sY_4"}]},
			{"Name" : "pY_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "pY_4"}]},
			{"Name" : "pX_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Port" : "pX_4"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n", "res_stream_V_data_4_V_blk_n", "res_stream_V_data_5_V_blk_n", "res_stream_V_data_6_V_blk_n", "res_stream_V_data_7_V_blk_n"]}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305", "Parent" : "64", "Child" : ["66", "75"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s",
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
			{"Name" : "kernel_data_V_5_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_5_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Port" : "line_buffer_Array_V_5_0_0"}]},
			{"Name" : "line_buffer_Array_V_5_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Port" : "line_buffer_Array_V_5_1_0"}]},
			{"Name" : "line_buffer_Array_V_5_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Port" : "line_buffer_Array_V_5_0_1"}]},
			{"Name" : "line_buffer_Array_V_5_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Port" : "line_buffer_Array_V_5_1_1"}]},
			{"Name" : "line_buffer_Array_V_5_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Port" : "line_buffer_Array_V_5_0_2"}]},
			{"Name" : "line_buffer_Array_V_5_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Port" : "line_buffer_Array_V_5_1_2"}]},
			{"Name" : "line_buffer_Array_V_5_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Port" : "line_buffer_Array_V_5_0_3"}]},
			{"Name" : "line_buffer_Array_V_5_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Port" : "line_buffer_Array_V_5_1_3"}]},
			{"Name" : "sX_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_4", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285", "Parent" : "65", "Child" : ["67", "68", "69", "70", "71", "72", "73", "74"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0",
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
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s_fu_31903", "Parent" : "66",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s",
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
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s_fu_31908", "Parent" : "66",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s",
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
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s_fu_31913", "Parent" : "66",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s",
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
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s_fu_31918", "Parent" : "66",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s",
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
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285.res_4_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s_fu_31923", "Parent" : "66",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s",
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
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285.res_5_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s_fu_31928", "Parent" : "66",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s",
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
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285.res_6_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s_fu_31933", "Parent" : "66",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s",
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
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.grp_dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0_fu_285.res_7_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s_fu_31938", "Parent" : "66",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s",
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
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325", "Parent" : "65", "Child" : ["76", "77", "78", "79", "80", "81", "82", "83"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s",
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
			{"Name" : "line_buffer_Array_V_5_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325.line_buffer_Array_V_5_0_0_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325.line_buffer_Array_V_5_1_0_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325.line_buffer_Array_V_5_0_1_U", "Parent" : "75"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325.line_buffer_Array_V_5_1_1_U", "Parent" : "75"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325.line_buffer_Array_V_5_0_2_U", "Parent" : "75"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325.line_buffer_Array_V_5_1_2_U", "Parent" : "75"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325.line_buffer_Array_V_5_0_3_U", "Parent" : "75"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s_fu_305.call_ret3_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s_fu_325.line_buffer_Array_V_5_1_3_U", "Parent" : "75"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "64",
		"StartFifo" : "start_for_relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "238",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "239",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "240",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "241",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "242",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "243",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "244",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "245",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "246",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "247",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "248",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "249",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "250",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "251",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "252",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "253",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_U0", "Parent" : "0",
		"CDFG" : "zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "275", "EstimateLatencyMax" : "275",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "84",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57bqm_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "246",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "247",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "248",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "249",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "250",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "251",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "252",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "253",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "254",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "255",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "256",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "257",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "258",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "259",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "260",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "261",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0", "Parent" : "0", "Child" : ["87"],
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
		"StartSource" : "85",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "254",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "255",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "256",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "257",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "258",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "259",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "260",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "261",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "262",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "263",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "264",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "265",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "266",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_4_V"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "267",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_5_V"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_6_V"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "114", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "res_stream_V_data_7_V"}]},
			{"Name" : "kernel_data_V_7_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_8"}]},
			{"Name" : "kernel_data_V_7_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_9"}]},
			{"Name" : "kernel_data_V_7_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_10"}]},
			{"Name" : "kernel_data_V_7_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_11"}]},
			{"Name" : "kernel_data_V_7_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_12"}]},
			{"Name" : "kernel_data_V_7_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_13"}]},
			{"Name" : "kernel_data_V_7_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_14"}]},
			{"Name" : "kernel_data_V_7_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_15"}]},
			{"Name" : "kernel_data_V_7_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_16"}]},
			{"Name" : "kernel_data_V_7_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_17"}]},
			{"Name" : "kernel_data_V_7_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_18"}]},
			{"Name" : "kernel_data_V_7_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_19"}]},
			{"Name" : "kernel_data_V_7_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_20"}]},
			{"Name" : "kernel_data_V_7_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_21"}]},
			{"Name" : "kernel_data_V_7_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_22"}]},
			{"Name" : "kernel_data_V_7_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_23"}]},
			{"Name" : "kernel_data_V_7_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_32"}]},
			{"Name" : "kernel_data_V_7_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_33"}]},
			{"Name" : "kernel_data_V_7_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_34"}]},
			{"Name" : "kernel_data_V_7_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_35"}]},
			{"Name" : "kernel_data_V_7_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_36"}]},
			{"Name" : "kernel_data_V_7_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_37"}]},
			{"Name" : "kernel_data_V_7_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_38"}]},
			{"Name" : "kernel_data_V_7_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_39"}]},
			{"Name" : "kernel_data_V_7_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_40"}]},
			{"Name" : "kernel_data_V_7_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_41"}]},
			{"Name" : "kernel_data_V_7_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_42"}]},
			{"Name" : "kernel_data_V_7_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_43"}]},
			{"Name" : "kernel_data_V_7_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_44"}]},
			{"Name" : "kernel_data_V_7_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_45"}]},
			{"Name" : "kernel_data_V_7_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_46"}]},
			{"Name" : "kernel_data_V_7_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_47"}]},
			{"Name" : "kernel_data_V_7_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_56"}]},
			{"Name" : "kernel_data_V_7_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_57"}]},
			{"Name" : "kernel_data_V_7_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_58"}]},
			{"Name" : "kernel_data_V_7_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_59"}]},
			{"Name" : "kernel_data_V_7_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_60"}]},
			{"Name" : "kernel_data_V_7_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_61"}]},
			{"Name" : "kernel_data_V_7_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_62"}]},
			{"Name" : "kernel_data_V_7_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_63"}]},
			{"Name" : "kernel_data_V_7_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_64"}]},
			{"Name" : "kernel_data_V_7_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_65"}]},
			{"Name" : "kernel_data_V_7_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_66"}]},
			{"Name" : "kernel_data_V_7_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_67"}]},
			{"Name" : "kernel_data_V_7_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_68"}]},
			{"Name" : "kernel_data_V_7_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_69"}]},
			{"Name" : "kernel_data_V_7_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_70"}]},
			{"Name" : "kernel_data_V_7_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "kernel_data_V_7_71"}]},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_0"}]},
			{"Name" : "line_buffer_Array_V_7_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_0"}]},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_1"}]},
			{"Name" : "line_buffer_Array_V_7_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_1"}]},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_2"}]},
			{"Name" : "line_buffer_Array_V_7_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_2"}]},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_3"}]},
			{"Name" : "line_buffer_Array_V_7_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_3"}]},
			{"Name" : "line_buffer_Array_V_7_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_4"}]},
			{"Name" : "line_buffer_Array_V_7_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_4"}]},
			{"Name" : "line_buffer_Array_V_7_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_5"}]},
			{"Name" : "line_buffer_Array_V_7_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_5"}]},
			{"Name" : "line_buffer_Array_V_7_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_6"}]},
			{"Name" : "line_buffer_Array_V_7_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_6"}]},
			{"Name" : "line_buffer_Array_V_7_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_0_7"}]},
			{"Name" : "line_buffer_Array_V_7_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "line_buffer_Array_V_7_1_7"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "sX"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "sY"}]},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "pY"}]},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Port" : "pX"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n", "res_stream_V_data_4_V_blk_n", "res_stream_V_data_5_V_blk_n", "res_stream_V_data_6_V_blk_n", "res_stream_V_data_7_V_blk_n"]}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433", "Parent" : "86", "Child" : ["88", "97"],
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
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_0"}]},
			{"Name" : "line_buffer_Array_V_7_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_0"}]},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_1"}]},
			{"Name" : "line_buffer_Array_V_7_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_1"}]},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_2"}]},
			{"Name" : "line_buffer_Array_V_7_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_2"}]},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_3"}]},
			{"Name" : "line_buffer_Array_V_7_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_3"}]},
			{"Name" : "line_buffer_Array_V_7_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_4"}]},
			{"Name" : "line_buffer_Array_V_7_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_4"}]},
			{"Name" : "line_buffer_Array_V_7_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_5"}]},
			{"Name" : "line_buffer_Array_V_7_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_5"}]},
			{"Name" : "line_buffer_Array_V_7_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_6"}]},
			{"Name" : "line_buffer_Array_V_7_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_6"}]},
			{"Name" : "line_buffer_Array_V_7_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_0_7"}]},
			{"Name" : "line_buffer_Array_V_7_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Port" : "line_buffer_Array_V_7_1_7"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381", "Parent" : "87", "Child" : ["89", "90", "91", "92", "93", "94", "95", "96"],
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
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103765", "Parent" : "88",
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
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103770", "Parent" : "88",
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
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103775", "Parent" : "88",
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
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103780", "Parent" : "88",
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
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_4_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103785", "Parent" : "88",
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
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_5_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103790", "Parent" : "88",
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
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_6_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103795", "Parent" : "88",
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
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.grp_dense_latency_ap_fixed_ap_fixed_config26_mult_0_0_0_0_0_0_0_0_0_fu_381.res_7_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config26_mult_s_fu_103800", "Parent" : "88",
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
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457", "Parent" : "87", "Child" : ["98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113"],
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
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_0_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_0_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_1_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_1_U", "Parent" : "97"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_2_U", "Parent" : "97"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_2_U", "Parent" : "97"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_3_U", "Parent" : "97"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_3_U", "Parent" : "97"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_4_U", "Parent" : "97"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_4_U", "Parent" : "97"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_5_U", "Parent" : "97"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_5_U", "Parent" : "97"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_6_U", "Parent" : "97"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_6_U", "Parent" : "97"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_0_7_U", "Parent" : "97"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_433.call_ret1_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config26_s_fu_457.line_buffer_Array_V_7_1_7_U", "Parent" : "97"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "195", "EstimateLatencyMax" : "195",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "86",
		"StartFifo" : "start_for_relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "262",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "263",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "264",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "265",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "266",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "267",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "273",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "274",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "275",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "276",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "277",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0", "Parent" : "0",
		"CDFG" : "resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "770", "EstimateLatencyMax" : "770",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "114",
		"StartFifo" : "start_for_resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0_U",
		"Port" : [
			{"Name" : "image_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "image_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "image_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "image_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "273",
				"BlockSignal" : [
					{"Name" : "image_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "274",
				"BlockSignal" : [
					{"Name" : "image_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "275",
				"BlockSignal" : [
					{"Name" : "image_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "276",
				"BlockSignal" : [
					{"Name" : "image_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "114", "DependentChan" : "277",
				"BlockSignal" : [
					{"Name" : "image_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "278",
				"BlockSignal" : [
					{"Name" : "resized_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "279",
				"BlockSignal" : [
					{"Name" : "resized_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "280",
				"BlockSignal" : [
					{"Name" : "resized_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "281",
				"BlockSignal" : [
					{"Name" : "resized_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "282",
				"BlockSignal" : [
					{"Name" : "resized_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "283",
				"BlockSignal" : [
					{"Name" : "resized_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "284",
				"BlockSignal" : [
					{"Name" : "resized_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "285",
				"BlockSignal" : [
					{"Name" : "resized_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_U0", "Parent" : "0",
		"CDFG" : "zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "927", "EstimateLatencyMax" : "927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "115",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58brm_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "278",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "279",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "280",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "281",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "282",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "283",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "284",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "285",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "286",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "287",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "288",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "289",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "290",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "291",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "292",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "117", "DependentChan" : "293",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0", "Parent" : "0", "Child" : ["118"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "963", "EstimateLatencyMax" : "963",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "116",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "286",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "287",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "288",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "289",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "290",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "291",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "292",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "116", "DependentChan" : "293",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "294",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "295",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "296",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "297",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "kernel_data_V_6_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_8"}]},
			{"Name" : "kernel_data_V_6_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_9"}]},
			{"Name" : "kernel_data_V_6_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_10"}]},
			{"Name" : "kernel_data_V_6_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_11"}]},
			{"Name" : "kernel_data_V_6_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_12"}]},
			{"Name" : "kernel_data_V_6_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_13"}]},
			{"Name" : "kernel_data_V_6_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_14"}]},
			{"Name" : "kernel_data_V_6_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_15"}]},
			{"Name" : "kernel_data_V_6_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_16"}]},
			{"Name" : "kernel_data_V_6_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_17"}]},
			{"Name" : "kernel_data_V_6_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_18"}]},
			{"Name" : "kernel_data_V_6_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_19"}]},
			{"Name" : "kernel_data_V_6_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_20"}]},
			{"Name" : "kernel_data_V_6_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_21"}]},
			{"Name" : "kernel_data_V_6_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_22"}]},
			{"Name" : "kernel_data_V_6_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_23"}]},
			{"Name" : "kernel_data_V_6_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_32"}]},
			{"Name" : "kernel_data_V_6_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_33"}]},
			{"Name" : "kernel_data_V_6_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_34"}]},
			{"Name" : "kernel_data_V_6_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_35"}]},
			{"Name" : "kernel_data_V_6_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_36"}]},
			{"Name" : "kernel_data_V_6_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_37"}]},
			{"Name" : "kernel_data_V_6_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_38"}]},
			{"Name" : "kernel_data_V_6_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_39"}]},
			{"Name" : "kernel_data_V_6_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_40"}]},
			{"Name" : "kernel_data_V_6_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_41"}]},
			{"Name" : "kernel_data_V_6_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_42"}]},
			{"Name" : "kernel_data_V_6_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_43"}]},
			{"Name" : "kernel_data_V_6_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_44"}]},
			{"Name" : "kernel_data_V_6_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_45"}]},
			{"Name" : "kernel_data_V_6_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_46"}]},
			{"Name" : "kernel_data_V_6_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_47"}]},
			{"Name" : "kernel_data_V_6_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_56"}]},
			{"Name" : "kernel_data_V_6_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_57"}]},
			{"Name" : "kernel_data_V_6_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_58"}]},
			{"Name" : "kernel_data_V_6_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_59"}]},
			{"Name" : "kernel_data_V_6_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_60"}]},
			{"Name" : "kernel_data_V_6_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_61"}]},
			{"Name" : "kernel_data_V_6_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_62"}]},
			{"Name" : "kernel_data_V_6_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_63"}]},
			{"Name" : "kernel_data_V_6_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_64"}]},
			{"Name" : "kernel_data_V_6_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_65"}]},
			{"Name" : "kernel_data_V_6_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_66"}]},
			{"Name" : "kernel_data_V_6_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_67"}]},
			{"Name" : "kernel_data_V_6_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_68"}]},
			{"Name" : "kernel_data_V_6_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_69"}]},
			{"Name" : "kernel_data_V_6_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_70"}]},
			{"Name" : "kernel_data_V_6_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "kernel_data_V_6_71"}]},
			{"Name" : "line_buffer_Array_V_6_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_0_0"}]},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_1_0"}]},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_0_1"}]},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_1_1"}]},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_0_2"}]},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_1_2"}]},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_0_3"}]},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_1_3"}]},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_0_4"}]},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_1_4"}]},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_0_5"}]},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_1_5"}]},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_0_6"}]},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_1_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_0_7"}]},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "line_buffer_Array_V_6_1_7"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "sX_3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "sY_3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "pY_3"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Port" : "pX_3"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n"]}]},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377", "Parent" : "117", "Child" : ["119", "124"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s",
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
			{"Name" : "kernel_data_V_6_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_6_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_0_0"}]},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_1_0"}]},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_0_1"}]},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_1_1"}]},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_0_2"}]},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_1_2"}]},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_0_3"}]},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_1_3"}]},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_0_4"}]},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_1_4"}]},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_0_5"}]},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_1_5"}]},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_0_6"}]},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_1_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_0_7"}]},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Port" : "line_buffer_Array_V_6_1_7"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config31_mult_0_0_0_0_0_fu_313", "Parent" : "118", "Child" : ["120", "121", "122", "123"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config31_mult_0_0_0_0_0",
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
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config31_mult_0_0_0_0_0_fu_313.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s_fu_32005", "Parent" : "119",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s",
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
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config31_mult_0_0_0_0_0_fu_313.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s_fu_32010", "Parent" : "119",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s",
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
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config31_mult_0_0_0_0_0_fu_313.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s_fu_32015", "Parent" : "119",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s",
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
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config31_mult_0_0_0_0_0_fu_313.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s_fu_32020", "Parent" : "119",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s",
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
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389", "Parent" : "118", "Child" : ["125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s",
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
			{"Name" : "line_buffer_Array_V_6_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_0_0_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_1_0_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_0_1_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_1_1_U", "Parent" : "124"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_0_2_U", "Parent" : "124"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_1_2_U", "Parent" : "124"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_0_3_U", "Parent" : "124"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_1_3_U", "Parent" : "124"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_0_4_U", "Parent" : "124"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_1_4_U", "Parent" : "124"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_0_5_U", "Parent" : "124"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_1_5_U", "Parent" : "124"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_0_6_U", "Parent" : "124"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_1_6_U", "Parent" : "124"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_0_7_U", "Parent" : "124"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s_fu_377.call_ret2_shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s_fu_389.line_buffer_Array_V_6_1_7_U", "Parent" : "124"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "117",
		"StartFifo" : "start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "294",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "295",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "296",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "117", "DependentChan" : "297",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "298",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "299",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "300",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "301",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0", "Parent" : "0",
		"CDFG" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "773", "EstimateLatencyMax" : "773",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "302",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "303",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "304",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "143", "DependentChan" : "305",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0", "Parent" : "0",
		"CDFG" : "add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "142",
		"StartFifo" : "start_for_add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0_U",
		"Port" : [
			{"Name" : "data1_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "298",
				"BlockSignal" : [
					{"Name" : "data1_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data1_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "299",
				"BlockSignal" : [
					{"Name" : "data1_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data1_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "300",
				"BlockSignal" : [
					{"Name" : "data1_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data1_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "301",
				"BlockSignal" : [
					{"Name" : "data1_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "302",
				"BlockSignal" : [
					{"Name" : "data2_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "303",
				"BlockSignal" : [
					{"Name" : "data2_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "304",
				"BlockSignal" : [
					{"Name" : "data2_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data2_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "142", "DependentChan" : "305",
				"BlockSignal" : [
					{"Name" : "data2_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "144", "DependentChan" : "306",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "144", "DependentChan" : "307",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "144", "DependentChan" : "308",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "144", "DependentChan" : "309",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_U0", "Parent" : "0",
		"CDFG" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "927", "EstimateLatencyMax" : "927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "143",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59bsm_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "306",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "307",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "308",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "143", "DependentChan" : "309",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "310",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "311",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "312",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "145", "DependentChan" : "313",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0", "Parent" : "0", "Child" : ["146"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "947", "EstimateLatencyMax" : "947",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "144",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "310",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "311",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "312",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "144", "DependentChan" : "313",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "314",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "315",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "316",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "317",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "kernel_data_V_3_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_4"}]},
			{"Name" : "kernel_data_V_3_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_5"}]},
			{"Name" : "kernel_data_V_3_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_6"}]},
			{"Name" : "kernel_data_V_3_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_7"}]},
			{"Name" : "kernel_data_V_3_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_8"}]},
			{"Name" : "kernel_data_V_3_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_9"}]},
			{"Name" : "kernel_data_V_3_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_10"}]},
			{"Name" : "kernel_data_V_3_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_11"}]},
			{"Name" : "kernel_data_V_3_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_16"}]},
			{"Name" : "kernel_data_V_3_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_17"}]},
			{"Name" : "kernel_data_V_3_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_18"}]},
			{"Name" : "kernel_data_V_3_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_19"}]},
			{"Name" : "kernel_data_V_3_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_20"}]},
			{"Name" : "kernel_data_V_3_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_21"}]},
			{"Name" : "kernel_data_V_3_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_22"}]},
			{"Name" : "kernel_data_V_3_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_23"}]},
			{"Name" : "kernel_data_V_3_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_28"}]},
			{"Name" : "kernel_data_V_3_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_29"}]},
			{"Name" : "kernel_data_V_3_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_30"}]},
			{"Name" : "kernel_data_V_3_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_31"}]},
			{"Name" : "kernel_data_V_3_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_32"}]},
			{"Name" : "kernel_data_V_3_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_33"}]},
			{"Name" : "kernel_data_V_3_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_34"}]},
			{"Name" : "kernel_data_V_3_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "kernel_data_V_3_35"}]},
			{"Name" : "line_buffer_Array_V_3_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "line_buffer_Array_V_3_0_0"}]},
			{"Name" : "line_buffer_Array_V_3_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "line_buffer_Array_V_3_1_0"}]},
			{"Name" : "line_buffer_Array_V_3_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "line_buffer_Array_V_3_0_1"}]},
			{"Name" : "line_buffer_Array_V_3_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "line_buffer_Array_V_3_1_1"}]},
			{"Name" : "line_buffer_Array_V_3_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "line_buffer_Array_V_3_0_2"}]},
			{"Name" : "line_buffer_Array_V_3_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "line_buffer_Array_V_3_1_2"}]},
			{"Name" : "line_buffer_Array_V_3_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "line_buffer_Array_V_3_0_3"}]},
			{"Name" : "line_buffer_Array_V_3_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "line_buffer_Array_V_3_1_3"}]},
			{"Name" : "sX_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "sX_6"}]},
			{"Name" : "sY_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "sY_6"}]},
			{"Name" : "pY_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "pY_6"}]},
			{"Name" : "pX_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Port" : "pX_6"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n"]}]},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249", "Parent" : "145", "Child" : ["147", "152"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "21", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
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
			{"Name" : "kernel_data_V_3_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_3_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Port" : "line_buffer_Array_V_3_0_0"}]},
			{"Name" : "line_buffer_Array_V_3_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Port" : "line_buffer_Array_V_3_1_0"}]},
			{"Name" : "line_buffer_Array_V_3_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Port" : "line_buffer_Array_V_3_0_1"}]},
			{"Name" : "line_buffer_Array_V_3_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Port" : "line_buffer_Array_V_3_1_1"}]},
			{"Name" : "line_buffer_Array_V_3_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Port" : "line_buffer_Array_V_3_0_2"}]},
			{"Name" : "line_buffer_Array_V_3_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Port" : "line_buffer_Array_V_3_1_2"}]},
			{"Name" : "line_buffer_Array_V_3_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Port" : "line_buffer_Array_V_3_0_3"}]},
			{"Name" : "line_buffer_Array_V_3_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Port" : "line_buffer_Array_V_3_1_3"}]},
			{"Name" : "sX_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_6", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config38_mult_0_0_0_0_0_fu_217", "Parent" : "146", "Child" : ["148", "149", "150", "151"],
		"CDFG" : "dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config38_mult_0_0_0_0_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config38_mult_0_0_0_0_0_fu_217.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s_fu_13543", "Parent" : "147",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s",
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
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config38_mult_0_0_0_0_0_fu_217.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s_fu_13548", "Parent" : "147",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s",
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
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config38_mult_0_0_0_0_0_fu_217.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s_fu_13553", "Parent" : "147",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s",
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
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config38_mult_0_0_0_0_0_fu_217.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s_fu_13558", "Parent" : "147",
		"CDFG" : "cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s",
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
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257", "Parent" : "146", "Child" : ["153", "154", "155", "156", "157", "158", "159", "160"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s",
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
			{"Name" : "line_buffer_Array_V_3_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257.line_buffer_Array_V_3_0_0_U", "Parent" : "152"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257.line_buffer_Array_V_3_1_0_U", "Parent" : "152"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257.line_buffer_Array_V_3_0_1_U", "Parent" : "152"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257.line_buffer_Array_V_3_1_1_U", "Parent" : "152"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257.line_buffer_Array_V_3_0_2_U", "Parent" : "152"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257.line_buffer_Array_V_3_1_2_U", "Parent" : "152"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257.line_buffer_Array_V_3_0_3_U", "Parent" : "152"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_249.call_ret5_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s_fu_257.line_buffer_Array_V_3_1_3_U", "Parent" : "152"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "145",
		"StartFifo" : "start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "314",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "315",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "316",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "145", "DependentChan" : "317",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "318",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "319",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "320",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "162", "DependentChan" : "321",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_U0", "Parent" : "0",
		"CDFG" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "927", "EstimateLatencyMax" : "927",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "161",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60btn_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "318",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "319",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "320",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "321",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "322",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "323",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "324",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "325",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0", "Parent" : "0", "Child" : ["164"],
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
		"StartSource" : "162",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "322",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "323",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "324",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "162", "DependentChan" : "325",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "326",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "res_stream_V_data_0_V"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "327",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "res_stream_V_data_1_V"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "328",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "res_stream_V_data_2_V"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "329",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "res_stream_V_data_3_V"}]},
			{"Name" : "kernel_data_V_4_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_4"}]},
			{"Name" : "kernel_data_V_4_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_5"}]},
			{"Name" : "kernel_data_V_4_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_6"}]},
			{"Name" : "kernel_data_V_4_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_7"}]},
			{"Name" : "kernel_data_V_4_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_8"}]},
			{"Name" : "kernel_data_V_4_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_9"}]},
			{"Name" : "kernel_data_V_4_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_10"}]},
			{"Name" : "kernel_data_V_4_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_11"}]},
			{"Name" : "kernel_data_V_4_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_16"}]},
			{"Name" : "kernel_data_V_4_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_17"}]},
			{"Name" : "kernel_data_V_4_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_18"}]},
			{"Name" : "kernel_data_V_4_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_19"}]},
			{"Name" : "kernel_data_V_4_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_20"}]},
			{"Name" : "kernel_data_V_4_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_21"}]},
			{"Name" : "kernel_data_V_4_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_22"}]},
			{"Name" : "kernel_data_V_4_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_23"}]},
			{"Name" : "kernel_data_V_4_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_28"}]},
			{"Name" : "kernel_data_V_4_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_29"}]},
			{"Name" : "kernel_data_V_4_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_30"}]},
			{"Name" : "kernel_data_V_4_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_31"}]},
			{"Name" : "kernel_data_V_4_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_32"}]},
			{"Name" : "kernel_data_V_4_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_33"}]},
			{"Name" : "kernel_data_V_4_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_34"}]},
			{"Name" : "kernel_data_V_4_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "kernel_data_V_4_35"}]},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_0_0"}]},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_1_0"}]},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_0_1"}]},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_1_1"}]},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_0_2"}]},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_1_2"}]},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_0_3"}]},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "line_buffer_Array_V_4_1_3"}]},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "sX_5"}]},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "sY_5"}]},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "pY_5"}]},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Port" : "pX_5"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "SubBlockPort" : ["res_stream_V_data_0_V_blk_n", "res_stream_V_data_1_V_blk_n", "res_stream_V_data_2_V_blk_n", "res_stream_V_data_3_V_blk_n"]}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249", "Parent" : "163", "Child" : ["165", "170"],
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
					{"ID" : "170", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_0_0"}]},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_1_0"}]},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_0_1"}]},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_1_1"}]},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_0_2"}]},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_1_2"}]},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_0_3"}]},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Port" : "line_buffer_Array_V_4_1_3"}]},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217", "Parent" : "164", "Child" : ["166", "167", "168", "169"],
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
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217.res_0_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s_fu_14545", "Parent" : "165",
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
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217.res_1_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s_fu_14550", "Parent" : "165",
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
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217.res_2_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s_fu_14555", "Parent" : "165",
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
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.grp_dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config42_mult_0_0_0_0_0_fu_217.res_3_V_write_assign_cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config42_mult_s_fu_14560", "Parent" : "165",
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
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257", "Parent" : "164", "Child" : ["171", "172", "173", "174", "175", "176", "177", "178"],
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
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_0_0_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_1_0_U", "Parent" : "170"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_0_1_U", "Parent" : "170"},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_1_1_U", "Parent" : "170"},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_0_2_U", "Parent" : "170"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_1_2_U", "Parent" : "170"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_0_3_U", "Parent" : "170"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_249.call_ret4_shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config42_s_fu_257.line_buffer_Array_V_4_1_3_U", "Parent" : "170"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "163",
		"StartFifo" : "start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "326",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "327",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "328",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "329",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "330",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "331",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "332",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "333",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0", "Parent" : "0",
		"CDFG" : "pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "773", "EstimateLatencyMax" : "773",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "179",
		"StartFifo" : "start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "330",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "331",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "332",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "333",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "334",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0", "Parent" : "0", "Child" : ["182"],
		"CDFG" : "relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "771", "EstimateLatencyMax" : "771",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "180",
		"StartFifo" : "start_for_relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0_U",
		"Port" : [
			{"Name" : "data_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "334",
				"BlockSignal" : [
					{"Name" : "data_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0.regslice_both_res_V_data_V_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer52_cpy1_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer52_cpy1_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer52_cpy1_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer52_cpy1_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer52_cpy2_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer52_cpy2_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer52_cpy2_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer52_cpy2_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer49_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer5_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer53_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer6_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer6_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer6_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer6_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer9_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer9_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer9_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer9_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer54_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer54_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer54_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer54_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer10_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer10_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer10_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer10_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer13_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer13_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer13_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer13_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer55_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer55_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer55_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer55_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer14_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer14_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer14_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer14_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer18_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer18_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer18_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer18_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer50_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer50_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer50_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer50_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer21_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer21_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer21_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer21_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer56_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer56_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer56_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer56_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer22_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer22_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer22_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer22_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer22_out_V_data_4_V_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer22_out_V_data_5_V_U", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer22_out_V_data_6_V_U", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer22_out_V_data_7_V_U", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer25_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer25_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer25_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer25_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer25_out_V_data_4_V_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer25_out_V_data_5_V_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer25_out_V_data_6_V_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer25_out_V_data_7_V_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer57_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer57_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer57_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer57_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer57_out_V_data_4_V_U", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer57_out_V_data_5_V_U", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer57_out_V_data_6_V_U", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer57_out_V_data_7_V_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer26_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer26_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer26_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer26_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer26_out_V_data_4_V_U", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer26_out_V_data_5_V_U", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer26_out_V_data_6_V_U", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer26_out_V_data_7_V_U", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer29_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer29_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer29_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer29_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "274", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer29_out_V_data_4_V_U", "Parent" : "0"},
	{"ID" : "275", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer29_out_V_data_5_V_U", "Parent" : "0"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer29_out_V_data_6_V_U", "Parent" : "0"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer29_out_V_data_7_V_U", "Parent" : "0"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer30_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "279", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer30_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer30_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "281", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer30_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "282", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer30_out_V_data_4_V_U", "Parent" : "0"},
	{"ID" : "283", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer30_out_V_data_5_V_U", "Parent" : "0"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer30_out_V_data_6_V_U", "Parent" : "0"},
	{"ID" : "285", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer30_out_V_data_7_V_U", "Parent" : "0"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer58_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer58_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "288", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer58_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "289", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer58_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "290", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer58_out_V_data_4_V_U", "Parent" : "0"},
	{"ID" : "291", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer58_out_V_data_5_V_U", "Parent" : "0"},
	{"ID" : "292", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer58_out_V_data_6_V_U", "Parent" : "0"},
	{"ID" : "293", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer58_out_V_data_7_V_U", "Parent" : "0"},
	{"ID" : "294", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer31_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "295", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer31_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "296", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer31_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "297", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer31_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "298", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer34_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "299", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer34_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "300", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer34_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "301", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer34_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "302", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer51_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "303", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer51_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "304", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer51_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "305", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer51_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "306", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer37_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "307", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer37_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "308", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer37_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "309", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer37_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "310", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer59_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "311", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer59_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "312", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer59_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer59_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer38_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer38_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer38_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer38_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "318", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer41_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "319", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer41_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "320", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer41_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer41_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "322", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer60_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "323", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer60_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "324", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer60_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "325", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer60_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "326", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer42_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "327", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer42_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "328", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer42_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer42_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "330", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer45_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer45_out_V_data_1_V_U", "Parent" : "0"},
	{"ID" : "332", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer45_out_V_data_2_V_U", "Parent" : "0"},
	{"ID" : "333", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer45_out_V_data_3_V_U", "Parent" : "0"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer61_out_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_U0_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_U0_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53bml_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_U0_U", "Parent" : "0"},
	{"ID" : "339", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_U0_U", "Parent" : "0"},
	{"ID" : "340", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54bnm_U", "Parent" : "0"},
	{"ID" : "341", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_U0_U", "Parent" : "0"},
	{"ID" : "342", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_U0_U", "Parent" : "0"},
	{"ID" : "343", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55bom_U", "Parent" : "0"},
	{"ID" : "344", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_U0_U", "Parent" : "0"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_U0_U", "Parent" : "0"},
	{"ID" : "346", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_U0_U", "Parent" : "0"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56bpm_U", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_U0_U", "Parent" : "0"},
	{"ID" : "349", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_U0_U", "Parent" : "0"},
	{"ID" : "350", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57bqm_U", "Parent" : "0"},
	{"ID" : "351", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config26_U0_U", "Parent" : "0"},
	{"ID" : "352", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_U0_U", "Parent" : "0"},
	{"ID" : "353", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_U0_U", "Parent" : "0"},
	{"ID" : "354", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58brm_U", "Parent" : "0"},
	{"ID" : "355", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_U0_U", "Parent" : "0"},
	{"ID" : "356", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_U0_U", "Parent" : "0"},
	{"ID" : "357", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_U0_U", "Parent" : "0"},
	{"ID" : "358", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59bsm_U", "Parent" : "0"},
	{"ID" : "359", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_U0_U", "Parent" : "0"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_U0_U", "Parent" : "0"},
	{"ID" : "361", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60btn_U", "Parent" : "0"},
	{"ID" : "362", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config42_U0_U", "Parent" : "0"},
	{"ID" : "363", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_U0_U", "Parent" : "0"},
	{"ID" : "364", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_U0_U", "Parent" : "0"},
	{"ID" : "365", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		input_images_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		pos_enc_main_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		pos_enc_main_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		pos_enc_main_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		pos_enc_main_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		pos_enc_bottleneck_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		pos_enc_bottleneck_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		pos_enc_bottleneck_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		pos_enc_bottleneck_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		layer48_out_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		kernel_data_V_1632 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2633 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4635 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5636 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7638 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1631_0 {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_7 {Type IO LastRead -1 FirstWrite -1}
		sY_7 {Type IO LastRead -1 FirstWrite -1}
		pY_7 {Type IO LastRead -1 FirstWrite -1}
		pX_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_4 {Type IO LastRead -1 FirstWrite -1}
		sY_4 {Type IO LastRead -1 FirstWrite -1}
		pY_4 {Type IO LastRead -1 FirstWrite -1}
		pX_4 {Type IO LastRead -1 FirstWrite -1}
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
		pX {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_71 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_6 {Type IO LastRead -1 FirstWrite -1}
		sY_6 {Type IO LastRead -1 FirstWrite -1}
		pY_6 {Type IO LastRead -1 FirstWrite -1}
		pX_6 {Type IO LastRead -1 FirstWrite -1}
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
	clone_stream_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_3072_s {
		data_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		res1_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		res1_V_data_1_V {Type O LastRead -1 FirstWrite 2}
		res1_V_data_2_V {Type O LastRead -1 FirstWrite 2}
		res1_V_data_3_V {Type O LastRead -1 FirstWrite 2}
		res2_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		res2_V_data_1_V {Type O LastRead -1 FirstWrite 2}
		res2_V_data_2_V {Type O LastRead -1 FirstWrite 2}
		res2_V_data_3_V {Type O LastRead -1 FirstWrite 2}}
	pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config49_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 5}}
	add_array_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config5_s {
		data1_V_data_V {Type I LastRead 1 FirstWrite -1}
		data2_V_data_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 3}}
	zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_config53_s {
		data_V_data_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_4u_config6_s {
		data_V_data_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 7}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 7}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 7}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 7}
		kernel_data_V_1632 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2633 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4635 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5636 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7638 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1631_0 {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config6_s {
		in_elem_data_V_read {Type I LastRead 0 FirstWrite -1}
		res_stream_V_data_0_V {Type O LastRead -1 FirstWrite 7}
		res_stream_V_data_1_V {Type O LastRead -1 FirstWrite 7}
		res_stream_V_data_2_V {Type O LastRead -1 FirstWrite 7}
		res_stream_V_data_3_V {Type O LastRead -1 FirstWrite 7}
		kernel_data_V_1632 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2633 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4635 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5636 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7638 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1631_0 {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config6_mult_0_0_0_0_0 {
		data_0_V_read {Type I LastRead 0 FirstWrite -1}
		data_1_V_read {Type I LastRead 0 FirstWrite -1}
		data_2_V_read {Type I LastRead 0 FirstWrite -1}
		data_3_V_read {Type I LastRead 0 FirstWrite -1}
		data_4_V_read {Type I LastRead 0 FirstWrite -1}
		data_5_V_read {Type I LastRead 0 FirstWrite -1}
		data_6_V_read {Type I LastRead 0 FirstWrite -1}
		data_7_V_read {Type I LastRead 0 FirstWrite -1}
		data_8_V_read {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config6_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_2_0_0_0_1u_config6_s {
		in_elem_data_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_1_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_2_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_4_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_5_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1631_0 {Type X LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config9_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config54_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config10_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 19}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 19}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 19}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 19}
		kernel_data_V_1_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config10_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		res_stream_V_data_0_V {Type O LastRead -1 FirstWrite 19}
		res_stream_V_data_1_V {Type O LastRead -1 FirstWrite 19}
		res_stream_V_data_2_V {Type O LastRead -1 FirstWrite 19}
		res_stream_V_data_3_V {Type O LastRead -1 FirstWrite 19}
		kernel_data_V_1_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config10_mult_0_0_0_0_0 {
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
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config10_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config10_s {
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
		line_buffer_Array_V_1_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config13_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config55_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 2}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 2}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 2}}
	conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config14_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 20}
		kernel_data_V_2_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_7 {Type IO LastRead -1 FirstWrite -1}
		sY_7 {Type IO LastRead -1 FirstWrite -1}
		pY_7 {Type IO LastRead -1 FirstWrite -1}
		pX_7 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config14_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		res_stream_V_data_0_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_1_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_2_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_3_V {Type O LastRead -1 FirstWrite 20}
		kernel_data_V_2_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_7 {Type IO LastRead -1 FirstWrite -1}
		sY_7 {Type IO LastRead -1 FirstWrite -1}
		pY_7 {Type IO LastRead -1 FirstWrite -1}
		pX_7 {Type IO LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config14_mult_0_0_0_0_0 {
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
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config14_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config14_s {
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
		line_buffer_Array_V_2_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config18_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config50_s {
		data_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config21_s {
		data1_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data1_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data1_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data1_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		data2_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data2_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data2_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data2_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config56_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_8u_config22_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 20}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 20}
		kernel_data_V_5_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_4 {Type IO LastRead -1 FirstWrite -1}
		sY_4 {Type IO LastRead -1 FirstWrite -1}
		pY_4 {Type IO LastRead -1 FirstWrite -1}
		pX_4 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_8u_config22_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		res_stream_V_data_0_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_1_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_2_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_3_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_4_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_5_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_6_V {Type O LastRead -1 FirstWrite 20}
		res_stream_V_data_7_V {Type O LastRead -1 FirstWrite 20}
		kernel_data_V_5_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_4 {Type IO LastRead -1 FirstWrite -1}
		sY_4 {Type IO LastRead -1 FirstWrite -1}
		pY_4 {Type IO LastRead -1 FirstWrite -1}
		pX_4 {Type IO LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_config22_mult_0_0_0_0_0_0_0_0_0 {
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
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config22_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config22_s {
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
		line_buffer_Array_V_5_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config25_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 3}}
	zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config57_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 1}}
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
		line_buffer_Array_V_7_1_7 {Type X LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_ReLU_config29_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 3}}
	resize_nearest_array_ap_fixed_8_2_0_0_0_8u_config30_s {
		image_V_data_0_V {Type I LastRead 49 FirstWrite -1}
		image_V_data_1_V {Type I LastRead 49 FirstWrite -1}
		image_V_data_2_V {Type I LastRead 49 FirstWrite -1}
		image_V_data_3_V {Type I LastRead 49 FirstWrite -1}
		image_V_data_4_V {Type I LastRead 49 FirstWrite -1}
		image_V_data_5_V {Type I LastRead 49 FirstWrite -1}
		image_V_data_6_V {Type I LastRead 49 FirstWrite -1}
		image_V_data_7_V {Type I LastRead 49 FirstWrite -1}
		resized_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_1_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_2_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_3_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_4_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_5_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_6_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_7_V {Type O LastRead -1 FirstWrite 2}}
	zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_8u_config58_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_8_2_0_0_0_4u_config31_s {
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
		kernel_data_V_6_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_71 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config31_s {
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
		kernel_data_V_6_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_71 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config31_mult_0_0_0_0_0 {
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
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config31_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_2_0_0_0_8u_config31_s {
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
		line_buffer_Array_V_6_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config34_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_4u_config51_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 5}}
	add_array_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config37_s {
		data1_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data1_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data1_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data1_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		data2_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data2_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data2_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data2_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config59_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config38_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 21}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 21}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 21}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 21}
		kernel_data_V_3_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_6 {Type IO LastRead -1 FirstWrite -1}
		sY_6 {Type IO LastRead -1 FirstWrite -1}
		pY_6 {Type IO LastRead -1 FirstWrite -1}
		pX_6 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_8_2_0_0_0_4u_config38_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		res_stream_V_data_0_V {Type O LastRead -1 FirstWrite 21}
		res_stream_V_data_1_V {Type O LastRead -1 FirstWrite 21}
		res_stream_V_data_2_V {Type O LastRead -1 FirstWrite 21}
		res_stream_V_data_3_V {Type O LastRead -1 FirstWrite 21}
		kernel_data_V_3_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_35 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_3 {Type X LastRead -1 FirstWrite -1}
		sX_6 {Type IO LastRead -1 FirstWrite -1}
		sY_6 {Type IO LastRead -1 FirstWrite -1}
		pY_6 {Type IO LastRead -1 FirstWrite -1}
		pX_6 {Type IO LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_ap_fixed_8_2_0_0_0_config38_mult_0_0_0_0_0 {
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
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_8_2_0_0_0_ap_fixed_8_2_0_0_0_config38_mult_s {
		x_V {Type I LastRead 0 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_2_0_0_0_4u_config38_s {
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
		line_buffer_Array_V_3_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config41_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_config60_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}}
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
		line_buffer_Array_V_4_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_4u_array_ap_fixed_8_2_0_0_0_4u_ReLU_config45_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 3}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 3}}
	pointwise_conv_2d_cl_array_array_ap_fixed_8_2_0_0_0_1u_config61_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 5}}
	relu_array_ap_fixed_1u_array_ap_fixed_8_2_0_0_0_1u_ReLU_config48_s {
		data_V_data_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5551", "Max" : "5551"}
	, {"Name" : "Interval", "Min" : "964", "Max" : "964"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_images_V_data_0_V { axis {  { input_images_V_data_0_V_TDATA in_data 0 8 }  { input_images_V_data_0_V_TVALID in_vld 0 1 }  { input_images_V_data_0_V_TREADY in_acc 1 1 } } }
	pos_enc_main_V_data_0_V { axis {  { pos_enc_main_V_data_0_V_TDATA in_data 0 8 }  { pos_enc_main_V_data_0_V_TVALID in_vld 0 1 }  { pos_enc_main_V_data_0_V_TREADY in_acc 1 1 } } }
	pos_enc_main_V_data_1_V { axis {  { pos_enc_main_V_data_1_V_TDATA in_data 0 8 }  { pos_enc_main_V_data_1_V_TVALID in_vld 0 1 }  { pos_enc_main_V_data_1_V_TREADY in_acc 1 1 } } }
	pos_enc_main_V_data_2_V { axis {  { pos_enc_main_V_data_2_V_TDATA in_data 0 8 }  { pos_enc_main_V_data_2_V_TVALID in_vld 0 1 }  { pos_enc_main_V_data_2_V_TREADY in_acc 1 1 } } }
	pos_enc_main_V_data_3_V { axis {  { pos_enc_main_V_data_3_V_TDATA in_data 0 8 }  { pos_enc_main_V_data_3_V_TVALID in_vld 0 1 }  { pos_enc_main_V_data_3_V_TREADY in_acc 1 1 } } }
	pos_enc_bottleneck_V_data_0_V { axis {  { pos_enc_bottleneck_V_data_0_V_TDATA in_data 0 8 }  { pos_enc_bottleneck_V_data_0_V_TVALID in_vld 0 1 }  { pos_enc_bottleneck_V_data_0_V_TREADY in_acc 1 1 } } }
	pos_enc_bottleneck_V_data_1_V { axis {  { pos_enc_bottleneck_V_data_1_V_TDATA in_data 0 8 }  { pos_enc_bottleneck_V_data_1_V_TVALID in_vld 0 1 }  { pos_enc_bottleneck_V_data_1_V_TREADY in_acc 1 1 } } }
	pos_enc_bottleneck_V_data_2_V { axis {  { pos_enc_bottleneck_V_data_2_V_TDATA in_data 0 8 }  { pos_enc_bottleneck_V_data_2_V_TVALID in_vld 0 1 }  { pos_enc_bottleneck_V_data_2_V_TREADY in_acc 1 1 } } }
	pos_enc_bottleneck_V_data_3_V { axis {  { pos_enc_bottleneck_V_data_3_V_TDATA in_data 0 8 }  { pos_enc_bottleneck_V_data_3_V_TVALID in_vld 0 1 }  { pos_enc_bottleneck_V_data_3_V_TREADY in_acc 1 1 } } }
	layer48_out_V_data_0_V { axis {  { layer48_out_V_data_0_V_TDATA out_data 1 8 }  { layer48_out_V_data_0_V_TVALID out_vld 1 1 }  { layer48_out_V_data_0_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
