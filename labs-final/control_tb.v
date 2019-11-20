`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:35:46 11/24/201
// Design Name:   control
// Module Name:   C:/Users//Xilinx/Lab3/Lab3/control_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_tb;

	// Inputs
	reg [5:0] opcode;

	// Outputs
	wire [3:0] EX;
	wire [2:0] M;
	wire [1:0] WB;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.opcode(opcode), 
		.EX(EX), 
		.M(M), 
		.WB(WB)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;
		//clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus
		#20;
		opcode = 0;
		#20;
		opcode = 35;
		#20;
		opcode = 43;
		#20;
		opcode = 4;
		#20;
		opcode = 0;
		#20;
		
		end
	initial begin 
		forever begin 
			#10;
			//clk = ~clk;
		end
	end
	initial begin
		$monitor ("opcode = %0d\ tclk = %0d\tWB = %8h \tM = %8h \tEX = %8h", opcode, clk, WB, M, EX);
		
	end
		
      
endmodule


