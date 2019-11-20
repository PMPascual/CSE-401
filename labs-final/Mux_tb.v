`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   Mux
// Module Name:   C:/Users//Xilinx/Lab3/Mux_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg sel;

	// Outputs
	wire [31:0] y;

	// Instantiate the Unit Under Test (UUT)
	Mux uut (
		.y(y), 
		.a(a), 
		.b(b), 
		.sel(sel)
	);

	initial begin
		a = 32'hAAAAAAAA;
		b = 32'h55555555;
		sel = 1'b1;
		#10;
		a = 32'h00000000;
		#10;
		sel = 1'b1;	
		#10;
		b = 32'hFFFFFFFF;
		#5;
		a = 32'hA5A5A5A5;
		#5;
		sel = 1'b0; 
		b = 32'hDDDDDDDD;
		#5;
		sel = 1'bx; 
		
	end
	
always @(a or b or sel)

	#1$display ("At t = %0d sel = %b a = %h b = %h y = %h",
	$time, sel, a, b, y);
endmodule 