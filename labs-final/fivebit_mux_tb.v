`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:10:32 11/24/201
// Design Name:   fivebit_mux
// Module Name:   C:/Users//Xilinx/Lab3/fivebit_mux_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fivebit_mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fivebit_mux_tb;

	// Inputs
	reg [4:0] a;
	reg [4:0] b;
	reg sel;

	// Outputs
	wire [4:0] y;

	// Instantiate the Unit Under Test (UUT)
	fivebit_mux uut (
		.y(y), 
		.a(a), 
		.b(b), 
		.sel(sel)
	);

	initial begin
	
	a = 5'b10000;	// Time = 1
	b = 5'b11111;
	sel = 1'b1;		// at Time = 1 y should be AAAAAAAA 
	#10;				// delay 10 ticks on clock, "increase 
	
	a = 5'b10101;	// sel has not changed; at Time = 11 y should be = a = 	00000000
	#10;				// Time = 21
	sel = 1'b1;		// sel = 1, same value as a 
	#10;				// Time = 31
	b = 5'b00000;
	#5;				// Time = 36
	a = 5'b10001;  // at Time 36, y = a5a5a5a5
	#5;				// Time = 41
	sel = 1'b0;		// sel = 0; 
	b = 5'b01011;  // at Time = 41, y = DDDDDDDD, so tricky run lines, wipe data until delay
	#5;				// Time  = 46
	sel = 1'bx; 	// x exists in hex, and deci as well; x indicates don't care condition
	end
	always @(a or b or sel)
	#1 $display ("At t = %0d sel = %b a = %h b = %h y = %h",
	$time, sel, a, b, y);
	endmodule



