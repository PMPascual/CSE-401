//Name: Phillip Pascual
//CSE-401
//Winter 2019
//Lab 1
//Description: Memory module.  Takes in address and accesses in memory.
//Outputs data in memory.

module mem(
    output reg [31:0] data,
    input wire [31:0] addr);

    reg [31:0] mem [0:127];

    //start
    initial begin
        mem[0] <= 'ha00000aa;
        mem[1] <= 'h10000011;
        mem[2] <= 'h20000022;   
        mem[3] <= 'h30000033;
        mem[4] <= 'h40000044;
        mem[5] <= 'h50000055;
        mem[6] <= 'h60000066;
        mem[7] <= 'h70000077;
        mem[8] <= 'h80000088;
        mem[9] <= 'h90000099;
    end

    always @ (addr) data <= mem[data];
endmodule
