`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:34 10/11/201 
// Design Name: 
// Module Name:    if_id 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
	// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module if_id(
		input clk,
	output reg [31:0] instrout,npcout,
   input wire [31:0] instr, npc       
				);
   initial begin
      instrout <= 0;
      npcout   <= 0;
   end
   always @* //(posedge clk)
 	begin
      #1 instrout <= instr;
      npcout <= npc;
   end
endmodule
