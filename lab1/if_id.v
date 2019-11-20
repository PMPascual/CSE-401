//Name: Phillip Pascual
//CSE-401
//Winter 2019
//Lab 1
//Description: Instruction fetch latch.  Takes in instruction and new pc.
//Synchronizes and outputs instrout and npcout.

module if_id(
    input wire [31:0] instr,
                      npc,
    output reg [31:0] instrout,
                      npcout);

    initial begin
        instrout <= 'h0;
        npcout <= 'h0;
    end

    always @* begin
        #1;
        instrout <= instr;
        npcout <= npc;
    end
endmodule
