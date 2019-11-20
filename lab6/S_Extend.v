`timescale 1ns / 1ps

module S_Extend
	(
		input	wire	[15:0] nextend,
		output reg	[31:0] extend
    );

	always@ * 
		begin
			extend <= {{16{nextend[15]}}, nextend};		
		end

endmodule

