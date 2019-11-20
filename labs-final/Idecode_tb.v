`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:30:13 11/26/201
// Design Name:   Idecode
// Module Name:   C:/Users//Xilinx/Lab3//Idecode_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Idecode
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Idecode_tb;

	// Inputs
	reg [31:0] IF_ID_instrout;
	reg [31:0] IF_ID_npcout;
	reg [4:0] MEM_WB_rd;
	reg MEM_WB_regwrite;
	reg [31:0] WB_mux5_writedata;

	// Outputs
	wire [1:0] wb_ctlout;
	wire [2:0] m_ctlout;
	wire regdst;
	wire alusrc;
	wire [1:0] aluop;
	wire [31:0] npcout;
	wire [31:0] rdata1out;
	wire [31:0] rdata2out;
	wire [31:0] s_extendout;
	wire [4:0] instrout_2016;
	wire [4:0] instrout_1511;

	// Instantiate the Unit Under Test (UUT)
	Idecode uut (
		.IF_ID_instrout(IF_ID_instrout), 
		.IF_ID_npcout(IF_ID_npcout), 
		.MEM_WB_rd(MEM_WB_rd), 
		.MEM_WB_regwrite(MEM_WB_regwrite), 
		.WB_mux5_writedata(WB_mux5_writedata), 
		.wb_ctlout(wb_ctlout), 
		.m_ctlout(m_ctlout), 
		.regdst(regdst), 
		.alusrc(alusrc), 
		.aluop(aluop), 
		.npcout(npcout), 
		.rdata1out(rdata1out), 
		.rdata2out(rdata2out), 
		.s_extendout(s_extendout), 
		.instrout_2016(instrout_2016), 
		.instrout_1511(instrout_1511)
	);

	initial begin
		// Initialize Inputs
		IF_ID_instrout = 0;
		IF_ID_npcout = 0;
		MEM_WB_rd = 0;
		MEM_WB_regwrite = 0;
		WB_mux5_writedata = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

