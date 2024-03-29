`timescale 1ns / 1ps
module Register
		(
		input [4:0] rs,   
		input [4:0] rt,    
		input [4:0] rd,    
		input [31:0] writedata,   
		input regwrite,    
		output reg [31:0] A, 
		output reg [31:0] B   
		); 
		
		reg [31:0] REG [0:31]; 
	
		integer i; 
		
	initial begin 
				A <= 0; 
				B <= 0;  
 
		for (i = 0; i < 32; i = i + 1)
			REG[i] <= 0;     
	
				

	end 
	
	always @ * begin 
			A <= REG[rs];  
			B <= REG[rt];  
	
	if (rd != 0 && regwrite)
			REG[rd] <= writedata; 
	end 
	


endmodule

 
