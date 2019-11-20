`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:18 10/30/201 
// Design Name: 
// Module Name:    fivebit_mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fivebit_mux(
output   wire [4:0] y,
input    wire [4:0] a, b,
input    wire sel
);
	
   assign
y = sel ? a : b;
endmodule
