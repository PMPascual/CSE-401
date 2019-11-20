`timescale 1ns / 1ps

module data_memory(
//input clk,
	input wire [31:0] addr,
	input wire [31:0] write_data,
	input wire memread, memwrite,
	output reg [31:0] read_data
	);

   reg [31:0] mem[0:255];  
   integer i;
		initial begin

			read_data <= 0;

		
		mem[0]<=32'b00000000000000000000000000000000;
		mem[1] <=32'b00000000000000000000000000000001;
		mem[2] <= 32'b00000000000000000000000000000010;
		mem[3] <= 32'b00000000000000000000000000000011;
		mem[4] <= 32'b00000000000000000000000000000100;
		mem[5] <= 32'b00000000000000000000000000000101;
		end
   always@(addr) begin //replace addr with (posedge clk)

		if (memread)  
			begin
				read_data <= mem[addr];
			end
		if (memwrite)
			begin
				mem[addr] <= write_data;
		end
end

endmodule
