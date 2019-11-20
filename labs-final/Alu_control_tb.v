`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   Alu_control
// Module Name:   
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Alu_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Alu_control_tb;

	// Inputs
	reg [5:0] funct;
	reg [1:0] aluop;

	// Outputs
	wire [2:0] select;

	// Instantiate the Unit Under Test (UUT)
	Alu_control uut (
		.funct(funct), 
		.aluop(aluop), 
		.select(select)
	);

	initial begin
	aluop = 2'b00;
	funct = 6'b100000;
	$monitor("ALUOp = %b\tfunct = %b\tselect = %b", aluop, funct, select);
	#1
	aluop = 2'b01;
	funct = 6'b100000;
// select = 110
	#1
	aluop = 2'b10;
// R-type, and so are all subsequent opcodes
	funct = 6'b100000;
// add, therefore select = 010
	#1
	funct = 6'b100010;
// select = 110
	#1
	funct = 6'b100100;
// select = 000
	#1
	funct = 6'b100101;
// select = 001
	#1
	funct = 6'b101010;
// select = 111
	#1
	$finish;
	end
endmodule
