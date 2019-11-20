`timescale 1ns / 1ps
module mux_5(
	output wire [31:0] y, 
	input  wire [31:0] a, b, 
	input  wire sel
    );
	assign y = sel ? a: b;

endmodule
