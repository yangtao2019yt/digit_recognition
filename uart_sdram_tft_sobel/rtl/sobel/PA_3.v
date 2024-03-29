// megafunction wizard: %PARALLEL_ADD%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: parallel_add 

// ============================================================
// File Name: PA_3.v
// Megafunction Name(s):
// 			parallel_add
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.0.0 Build 156 04/24/2013 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module PA_3 (
	clock,
	data0x,
	data1x,
	data2x,
	result);

	input	  clock;
	input	[17:0]  data0x;
	input	[17:0]  data1x;
	input	[17:0]  data2x;
	output	[19:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0	  clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [19:0] sub_wire0;
	wire [17:0] sub_wire4 = data2x[17:0];
	wire [17:0] sub_wire3 = data1x[17:0];
	wire [19:0] result = sub_wire0[19:0];
	wire [17:0] sub_wire1 = data0x[17:0];
	wire [53:0] sub_wire2 = {sub_wire4, sub_wire3, sub_wire1};

	parallel_add	parallel_add_component (
				.clock (clock),
				.data (sub_wire2),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.aclr (),
				.clken ()
				// synopsys translate_on
				);
	defparam
		parallel_add_component.msw_subtract = "NO",
		parallel_add_component.pipeline = 1,
		parallel_add_component.representation = "SIGNED",
		parallel_add_component.result_alignment = "LSB",
		parallel_add_component.shift = 0,
		parallel_add_component.size = 3,
		parallel_add_component.width = 18,
		parallel_add_component.widthr = 20;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: MSW_SUBTRACT STRING "NO"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: REPRESENTATION STRING "SIGNED"
// Retrieval info: CONSTANT: RESULT_ALIGNMENT STRING "LSB"
// Retrieval info: CONSTANT: SHIFT NUMERIC "0"
// Retrieval info: CONSTANT: SIZE NUMERIC "3"
// Retrieval info: CONSTANT: WIDTH NUMERIC "18"
// Retrieval info: CONSTANT: WIDTHR NUMERIC "20"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT GND "clock"
// Retrieval info: USED_PORT: data0x 0 0 18 0 INPUT NODEFVAL "data0x[17..0]"
// Retrieval info: USED_PORT: data1x 0 0 18 0 INPUT NODEFVAL "data1x[17..0]"
// Retrieval info: USED_PORT: data2x 0 0 18 0 INPUT NODEFVAL "data2x[17..0]"
// Retrieval info: USED_PORT: result 0 0 20 0 OUTPUT NODEFVAL "result[19..0]"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 18 0 data0x 0 0 18 0
// Retrieval info: CONNECT: @data 0 0 18 18 data1x 0 0 18 0
// Retrieval info: CONNECT: @data 0 0 18 36 data2x 0 0 18 0
// Retrieval info: CONNECT: result 0 0 20 0 @result 0 0 20 0
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_3.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_3.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_3.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_3.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_3_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL PA_3_bb.v TRUE
// Retrieval info: LIB_FILE: altera_mf
