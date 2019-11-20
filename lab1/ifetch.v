//Name: Phillip Pascual
//CSE-401
//Winter 2019
//Lab 1
//Description: Instruction fetch module.  Instantiates mux, program counter,
//if_id module and incrementer.

`include "memory.v"
`include "mux.v"
`include "increment.v"
`include "if_id.v"
`include "pc.v"

module I_FETCH(
    output wire [31:0] IF_ID_instr,
    output wire [31:0] IF_ID_npc,
    input wire         EX_MEM_PCSrc,
    input wire  [31:0] EX_MEM_NPC);

    wire    [31:0] PC;
    wire    [31:0] dataout;
    wire    [31:0] npc, npc_mux;

    mux mux1 (.y(npc_mux),
              .a(EX_MEM_NPC),
              .b(npc),
              .sel(EX_MEM_PCSrc));

    pc pc1 (.pc(PC),
            .npc(npc_mux));

    mem memory1 (.data(dataout),
                 .addr(PC));

    if_id if_id1 (.instrout(IF_ID_instr),
                  .npcout(IF_ID_npc),
                  .instr(dataout),
                  .npc(npc));

    increment increment1 (.pcout(npc),
                          .pcin(PC));

    initial begin
        $display("Time\t PC\t npc\t dataout of MEM\t IF_ID_instr\t IF_ID_npc");
        $monitor("%0d\t %0d\t %0d\t %h\t %h\t %0d", $time, PC, npc, dataout,
                 IF_ID_instr, IF_ID_npc);
        #22 $finish;
    end
endmodule
