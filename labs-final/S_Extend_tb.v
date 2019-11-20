`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   S_Extend
// Module Name:   
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: S_Extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module S_Extend_tb;

	// Inputs
	reg [15:0] nextend;

	// Outputs
	wire [31:0] extend;

	// Instantiate the Unit Under Test (UUT)
	S_Extend uut (
		.nextend(nextend), 
		.extend(extend)
	);

	initial begin
		// Initialize Inputs
		nextend = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
			nextend = 16'b0;
      #5;  
			nextend = 16'b 0000000000010011;  
		#5 nextend = 16'b 1000000000011011; 
			end always @(extend) 
				#1 $display ("Time = %0d \t nextend = %0b \t extend = %0b", 
					$time, nextend, extend); 
  endmodule
