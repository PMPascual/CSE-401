`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:17:31 11/27/2017
// Design Name:   Incrementer
// Module Name:   C:/Users//Xilinx/Lab3/Incrementer_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Incrementer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Incrementer_tb;
	//inputs
	reg [31:0] pcin;

	// Outputs
	wire [31:0] pcout;

	// Instantiate the Unit Under Test (UUT)
	Incrementer uut (
	pcout(pcout), 
	.pcin(pcin)
	);

	initial begin
		// Initialize Inputs
		#10; 
		pcin = 3;
		#10;
		pcin = 15;
		#10;
		pcin = 64;
		#5;
	end

	always @(pcin)
			#1 $display ("Time = %0d \t A = %0d \t pcout = %0d",
			$time, pcin, pcout);    
endmodule

