`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:44:25 11/27/201
// Design Name:   ex_mem
// Module Name:   C:/Users//Xilinx/Lab3/Lab3/ex_mem_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ex_mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ex_mem_tb;

	// Inputs
	reg [1:0] ctlwb_out;
	reg [2:0] ctlm_out;
	reg [31:0] adder_out;
	reg aluzero;
	reg [31:0] aluout;
	reg [31:0] readdat2;
	reg [4:0] muxout;

	// Outputs
	wire [1:0] wb_ctlout;
	wire branch;
	wire memread;
	wire memwrite;
	wire [31:0] add_result;
	wire zero;
	wire [31:0] alu_result;
	wire [31:0] rdata2out;
	wire [4:0] five_bit_muxout;

	// Instantiate the Unit Under Test (UUT)
	ex_mem uut (
		.ctlwb_out(ctlwb_out), 
		.ctlm_out(ctlm_out), 
		.adder_out(adder_out), 
		.aluzero(aluzero), 
		.aluout(aluout), 
		.readdat2(readdat2), 
		.muxout(muxout), 
		.wb_ctlout(wb_ctlout), 
		.branch(branch), 
		.memread(memread), 
		.memwrite(memwrite), 
		.add_result(add_result), 
		.zero(zero), 
		.alu_result(alu_result), 
		.rdata2out(rdata2out), 
		.five_bit_muxout(five_bit_muxout)
	);

	initial begin
		// Initialize Inputs
		ctlwb_out = 0;
		ctlm_out = 0;
		adder_out = 0;
		aluzero = 0;
		aluout = 0;
		readdat2 = 0;
		muxout = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

