`timescale 1ns / 1ps

module Memory(
    input	wire	[1:0]		wb_ctlout,
	input	wire				branch, memread, memwrite,
	input	wire				zero,
	input	wire	[31:0]	alu_result, rdata2out,
	input	wire	[4:0]		five_bit_muxout,
	output	wire				MEM_PCSrc,
	output	wire				MEM_WB_regwrite, MEM_WB_memtoreg,
	output	wire	[31:0]	read_data, mem_alu_result,
    output	wire	[4:0] mem_write_reg
    );

    // signals
	wire	[31:0] read_data_in;
 
	// instantiations
	And And4(
		// inputs
		.membranch(branch),
		.zero(zero),
		// output 
		.PCSrc(MEM_PCSrc));
					
	Data_Memory Data_Memory4(
		//inputs
		.addr(alu_result),
		.write_data(rdata2out),
		.memwrite(memwrite),
		.memread(memread),
		// output
		.read_data(read_data_in));
										
	Mem_Wb Mem_Wb4(
		//inputs
		.control_wb_in(wb_ctlout),
		.read_data_in(read_data_in),
		.alu_result_in(alu_result),
		.write_reg_in(five_bit_muxout),
		// outputs
		.regwrite(MEM_WB_regwrite),
		.memtoreg(MEM_WB_memtoreg),
		.read_data(read_data),
		.mem_alu_result(mem_alu_result),
        .mem_write_reg(mem_write_reg));

endmodule
