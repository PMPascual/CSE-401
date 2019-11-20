`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:41:28 11/29/201
// Design Name:   Pc_counter
// Module Name:   C:/Users//Xilinx/Lab3/Pc_counter_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Pc_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Pc_counter_tb (clk, npc, opc);

	// Inputs
	input wire clk;
	input wire [31:0]npc;
	output reg [31:0]opc;

	// Outputs
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	Pc_counter uut (
		.PC(PC), 
		.npc(npc)
	);

	initial begin
		npc = 0;
		#10;
		npc = 1;
		#10;
		npc = 2;
		#10; 
		npc = 3;
		#10;
		npc = 4;
		#10;
	end

	always @(npc)
	#1 $display ("Time = %0d \t npc = %0d \t PC = %0d",
	$time, npc, PC); 

endmodule
