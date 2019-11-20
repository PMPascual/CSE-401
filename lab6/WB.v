`timescale 1ns / 1ps

module WB(
   input wire [31:0] mem_Read_data,
	input wire [31:0] mem_ALU_result,
	input wire MemtoReg,
	output wire [31:0] wb_data
    );

	mux_5 mux_5
		(.y(wb_data), 
		.a(mem_Read_data),
		.b(mem_ALU_result),
		.sel(MemtoReg));
	endmodule
	
