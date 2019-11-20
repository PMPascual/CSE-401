//Name: Phillip Pascual
//CSE-401
//Winter 2019
//Lab 1
//Description: Program counter module.  Takes in incremented npc and outputs
//as new pc

module pc(
    input wire [31:0] npc,
    output reg [31:0] pc);

    initial begin
        pc <= 0;
    end

    always @ (npc) begin
        #1 pc <= npc;
    end
endmodule
