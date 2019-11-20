`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:35:42 11/26/201
// Design Name:   Execute
// Module Name:   C:/Users//Xilinx/Lab3/Execute_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Execute
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Execute_tb;

	// Inputs
	reg [1:0] wb_ctl;
	reg [2:0] m_ctl;
	reg regdst;
	reg alusrc;
	reg [1:0] aluop;
	reg [31:0] npcout;
	reg [31:0] rdata1;
	reg [31:0] rdata2;
	reg [31:0] s_extendout;
	reg [4:0] instrout_2016;
	reg [4:0] instrout_1511;

	// Outputs
	wire [1:0] wb_ctlout;
	wire branch;
	wire memread;
	wire memwrite;
	wire [31:0] EX_MEM_NPC;
	wire zero;
	wire [31:0] alu_result;
	wire [31:0] rdata2out;
	wire [4:0] five_bit_muxout;

	// Instantiate the Unit Under Test (UUT)
	Execute uut (
		.wb_ctl(wb_ctl), 
		.m_ctl(m_ctl), 
		.regdst(regdst), 
		.alusrc(alusrc), 
		.aluop(aluop), 
		.npcout(npcout), 
		.rdata1(rdata1), 
		.rdata2(rdata2), 
		.s_extendout(s_extendout), 
		.instrout_2016(instrout_2016), 
		.instrout_1511(instrout_1511), 
		.wb_ctlout(wb_ctlout), 
		.branch(branch), 
		.memread(memread), 
		.memwrite(memwrite), 
		.EX_MEM_NPC(EX_MEM_NPC), 
		.zero(zero), 
		.alu_result(alu_result), 
		.rdata2out(rdata2out), 
		.five_bit_muxout(five_bit_muxout)
	);

	initial begin
		// Initialize Inputs
		wb_ctl = 0;
		m_ctl = 0;
		regdst = 0;
		alusrc = 0;
		aluop = 0;
		npcout = 0;
		rdata1 = 0;
		rdata2 = 0;
		s_extendout = 0;
		instrout_2016 = 0;
		instrout_1511 = 0;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

