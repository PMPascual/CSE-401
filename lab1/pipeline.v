`include "ifetch.v"

module pipeline();

    wire    [31:0] IF_ID_instr, IF_ID_npc;
    wire    EX_MEM_PCSrc;
    wire    [31:0] EX_MEM_NPC;

    I_FETCH ifetch(
                .IF_ID_instr(IF_ID_instr),
                .IF_ID_npc(IF_ID_npc),
                .EX_MEM_PCSrc(EX_MEM_PCSrc),
                .EX_MEM_NPC(EX_MEM_NPC));

    //for I_DECODE
    wire    [4:0] MEM_WB_rd;
    wire    MEM_WB_regwrite;
    wire    [31:0] WB_mux_writedata;
    wire    [1:0] wb_ctlout;
    wire    [2:0] m_ctlout;
    wire    regdst, alusrc;
    wire    [1:0] aluop;
    wire    [31:0] npcout, rdata1out, rdata2out, s_extendout;
    wire    [4:0] instrout_2016, instrout_1511;

    idecode idecode1(
                .IF_ID_instrout(IF_ID_instr),
				.IF_ID_npcout(IF_ID_npc),
				.MEM_WB_rd(MEM_WB_rd),
				.MEM_WB_regwrite(MEM_WB_regwrite),
				.WB_mux_writedata(WB_mux_writedata),
				.wb_ctlout(wb_ctlout),
				.m_ctlout(m_ctlout),
				.regdst(regdst),
				.alusrc(alusrc),
				.aluop(aluop),
				.npcout(npcout),
				.rdata1out(rdata1out),
				.rdata2out(rdata2out),
				.s_extendout(s_extendout),
				.instrout_2016(instrout_2016),
                .instrout_1511(instrout_1511));

endmodule
