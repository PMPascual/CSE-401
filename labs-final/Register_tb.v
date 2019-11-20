`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date: 
// Design Name:   Register
// Module Name:   C:/Users//Xilinx/Lab3/Register_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_tb;

	// Inputs
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;
	reg [31:0] writedata;
	reg regwrite;

	// Outputs
	wire [31:0] A;
	wire [31:0] B;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.writedata(writedata), 
		.regwrite(regwrite), 
		.A(A), 
		.B(B)
	);
	
	initial begin        
		rs = 0;       
		rt = 1;        
		regwrite = 0;        
		#1   
		rs = 2;       
		rt = 3;      
		rd = 3;     
		writedata = 100;            
		#1  
		rs = 4;   
		rt = 5;     
		regwrite = 1;    
		#1
		regwrite = 0;    
		rt = 3;       
		#1  
		rs = 6;     
		regwrite = 1;    
		rd = 6;    
		writedata = 100;    
		#1 
		$finish;		
		end  
      
endmodule

