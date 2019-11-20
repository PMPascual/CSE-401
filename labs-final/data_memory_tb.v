`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:51:16 12/01/2017
// Design Name:   data_memory
// Module Name:   C:/Users//Xilinx/Lab3/Lab3/data_memory_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module data_memory_tb;

	// Inputs
	reg [31:0] addr;
	reg [31:0] write_data;
	reg memread;
	reg memwrite;

	// Outputs
	wire [31:0] read_data;

	// Instantiate the Unit Under Test (UUT)
	data_memory uut (
		.addr(addr), 
		.write_data(write_data), 
		.memread(memread), 
		.memwrite(memwrite), 
		.read_data(read_data)
	);
	initial 
		begin
		
        memread = 1;
        memwrite = 0;
        addr   = 32'b00000001;
        #1
	memread = 0;
        memwrite = 1;
        addr   = 32'b00000001;
        write_data = ~addr;
        #1 
	memread = 1;
        memwrite = 0;
        addr   = 32'b00000010;
        #1 
	memread = 1;
        memwrite = 1;
        addr   = 32'b00000010;
        write_data      = ~addr;
        #1 
	memread = 1;
        memwrite = 0;
        addr   = 32'b00000100;
        #1 
	memread = 0;
        memwrite = 1;
        addr   = 32'b00000100;
        write_data      = ~addr;
        #1 
	memread = 1;
        memwrite = 0;
        addr   = 32'b00001000;
        #1 
	memread = 1;
        memwrite = 1;
        addr   = 32'b00001000;
        write_data      = ~addr;
       // #1 $finish;
     end
endmodule
