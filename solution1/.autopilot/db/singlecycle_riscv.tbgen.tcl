set C_TypeInfoList {{ 
"singlecycle_riscv" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"startingInst": [["volatile"],"0"] }, {"immediate": [["volatile"],"1"] }],["2","3"],""],
 "2": [ "pProgramCounter", [[],{ "pointer": "4"}],""],
 "3": [ "instSet", [[], {"array": ["4", [15]]}],""], 
"1": [ "ap_int<6>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 6}}]}],[],""]}], 
"4": [ "Instruction", {"struct": [[],[],[{ "name": [[],  {"scalar": "5"}]},{ "format_Sel": [[],  {"scalar": "unsigned char"}]},{ "entryIndex": [[], "6"]}],""]}], 
"5": [ "InstName", {"enum": [[],[],[{"ADD":  {"scalar": "__integer__"}},{"ADDI":  {"scalar": "__integer__"}},{"SUB":  {"scalar": "__integer__"}},{"MUL":  {"scalar": "__integer__"}},{"LW":  {"scalar": "__integer__"}},{"SW":  {"scalar": "__integer__"}},{"Jump":  {"scalar": "__integer__"}},{"JAL":  {"scalar": "__integer__"}},{"JALR":  {"scalar": "__integer__"}},{"AND":  {"scalar": "__integer__"}},{"OR":  {"scalar": "__integer__"}},{"BEQ":  {"scalar": "__integer__"}},{"BNE":  {"scalar": "__integer__"}},{"SLL":  {"scalar": "__integer__"}},{"SRL":  {"scalar": "__integer__"}},{"NUM_OF_INSTRUCTIONS":  {"scalar": "__integer__"}}],""]}], 
"6": [ "ap_int<5>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"0": [ "ap_int<32>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 32}}]}],[],""]}]
}}
set moduleName singlecycle_riscv
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {singlecycle_riscv}
set C_modelType { void 0 }
set C_modelArgList {
	{ startingInst_V int 32 unused  }
	{ immediate_V int 6 unused  }
}
set C_modelArgMapList {[ 
	{ "Name" : "startingInst_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "startingInst.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "immediate_V", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY", "bitSlice":[{"low":0,"up":5,"cElement": [{"cName": "immediate.V","cData": "int6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ startingInst_V sc_in sc_lv 32 signal 0 } 
	{ startingInst_V_ap_vld sc_in sc_logic 1 invld 0 } 
	{ startingInst_V_ap_ack sc_out sc_logic 1 inacc 0 } 
	{ immediate_V sc_in sc_lv 6 signal 1 } 
	{ immediate_V_ap_vld sc_in sc_logic 1 invld 1 } 
	{ immediate_V_ap_ack sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "startingInst_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "startingInst_V", "role": "default" }} , 
 	{ "name": "startingInst_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "startingInst_V", "role": "ap_vld" }} , 
 	{ "name": "startingInst_V_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "startingInst_V", "role": "ap_ack" }} , 
 	{ "name": "immediate_V", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "immediate_V", "role": "default" }} , 
 	{ "name": "immediate_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "immediate_V", "role": "ap_vld" }} , 
 	{ "name": "immediate_V_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "immediate_V", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "singlecycle_riscv",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "startingInst_V", "Type" : "HS", "Direction" : "I"},
			{"Name" : "immediate_V", "Type" : "HS", "Direction" : "I"},
			{"Name" : "pProgramCounter_name_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pProgramCounter_form_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pProgramCounter_entr_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "instSet_entryIndex_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.instSet_entryIndex_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.singlecycle_riscvcud_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	singlecycle_riscv {
		startingInst_V {Type I LastRead -1 FirstWrite -1}
		immediate_V {Type I LastRead -1 FirstWrite -1}
		pProgramCounter_name_1 {Type IO LastRead -1 FirstWrite -1}
		pProgramCounter_form_1 {Type IO LastRead -1 FirstWrite -1}
		pProgramCounter_entr_1 {Type IO LastRead -1 FirstWrite -1}
		instSet_entryIndex_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	startingInst_V { ap_hs {  { startingInst_V in_data 0 32 }  { startingInst_V_ap_vld in_vld 0 1 }  { startingInst_V_ap_ack in_acc 1 1 } } }
	immediate_V { ap_hs {  { immediate_V in_data 0 6 }  { immediate_V_ap_vld in_vld 0 1 }  { immediate_V_ap_ack in_acc 1 1 } } }
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
