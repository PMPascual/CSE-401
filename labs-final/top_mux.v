`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
//
// Create Date:    
// Design Name: 
// Module Name:    top_mux 
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
module top_mux(
	output wire [31:0] y, 
	wire [31:0] a, b,
	input  wire alusrc   
	); 
	assign y = alusrc ? a: b; 
endmodule 