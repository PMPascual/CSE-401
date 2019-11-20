`include "Alu_control.v"
`timescale 1ns/1ps

module testAlu();
    wire    [2:0]   select;

    reg     [1:0]   aluOp;
    reg     [5:0]   funct;
    
    Alu_control alu_control1(
        .funct(funct),
        .aluop(aluOp),
        .select(select)
    );

    initial begin
        aluOp = 2'b00;
        funct = 6'b100000;
        $monitor ("AluOP = %b\tfunct = %b\tselect = %b", aluOp, funct, select);
        #1
        aluOp = 2'b01;
        funct = 6'b100000;
        #1
        aluOp = 2'b10;
        funct = 6'b100000;
        #1
        funct = 6'b100010;
        #1
        funct = 6'b100100;
        #1
        funct = 6'b100101;
        #1
        funct = 6'b101010;
        #1
        $finish;
    end

endmodule
