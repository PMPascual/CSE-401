`timescale 1ns / 1ps

module I_Fetch
	(
	//input clk,
   output wire  [31:0] IF_ID_instr, 
	output wire  [31:0] IF_ID_npc,
   input  wire         EX_MEM_PCSrc,
   input  wire  [31:0] EX_MEM_NPC
   );


   wire [31:0] PC;
   wire [31:0] dataout;
   wire [31:0] npc,npc_mux;
   
	Mux mux1(
		.y(npc_mux), 
		.a(EX_MEM_NPC),
      .b(npc), 
      .sel(EX_MEM_PCSrc)
	);
   
	Pc_counter pc_counter1(
		.PC(PC),
		.npc(npc_mux)
		);

   Memory memory1(
		.data(dataout),
      .addr(PC)
		);
		
   if_id  if_id1(
		.instr(dataout),
		.npc(npc),
		.instrout(IF_ID_instr),
		.npcout(IF_ID_npc),
		.clk(clk)
		);
  
  Incrementer incrementer1(
		.pcout(npc), 
      .pcin(PC)
		);
                         
endmodule


	 
