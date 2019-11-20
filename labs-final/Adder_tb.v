`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   Adder
// Module Name:   
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_tb;

	// Inputs
	reg [31:0] add_in1;
	reg [31:0] add_in2;

	// Outputs
	wire [31:0] add_out;

	// Instantiate the Unit Under Test (UUT)
	Adder uut (
		.add_in1(add_in1), 
		.add_in2(add_in2), 
		.add_out(add_out)
	);

	initial begin

// Initialize Inputs
add_in1 = 0;
add_in2 = 0;
#5;
add_in1 = 1;
add_in2 = 2;
#5;
add_in1 = -10;
add_in2 = 5;
#5;
add_in1 = 10500000;
add_in2 = 0;
end
	always @(add_out)
	#1 $display ("Time = %0d \t add_in1 = %0d \t add_in2 = %0d \t add_out = %0d",
		$time, add_in1, add_in2, add_out); 
endmodule
