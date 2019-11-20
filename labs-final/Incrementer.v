`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:24 10/11/201
// Design Name: 
// Module Name:    Incrementer 
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
module Incrementer(
		output wire [31:0] pcout,
		input  wire [31:0] pcin
		);
		
		assign pcout = pcin + 1;
endmodule
