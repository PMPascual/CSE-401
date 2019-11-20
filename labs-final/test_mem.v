`timescale 1ns / 1ps
`include "data_memory.v"

module testMem();
    wire    [31:0]  dataOut;

    reg     [31:0]  address;
    reg     [31:0]  data;
    reg             memRead, memWrite;

    initial begin
        //$dumpfile "reg_test.vcd");
        //$dumpvars(0, reg_test);

        memRead = 1;
        memWrite = 0;
        address = 32'b00000001;

        #1
        memRead = 1;
        memWrite = 0;
        address = 32'b00000001;
        data = ~address;

        #1
        memRead = 1;
        memWrite = 0;
        address = 32'b00000010;

        #1
        memRead = 1;
        memWrite = 1;
        address = 32'b00000010;
        data = ~address;

        #1
        memRead = 1;
        memWrite = 0;
        address = 32'b00000100;

        #1
        memRead = 0;
        memWrite = 1;
        address = 32'b00000100;
        data = ~address;

        #1
        memRead = 1;
        memWrite = 0;
        address = 32'b00001000;

        #1
        memRead = 1;
        memWrite = 1;
        address = 32'b00001000;
        data = ~address;

        #1
        $finish;
    end

    data_memory dataMem(.addr(address), .write_data(data), .memread(memRead),
        .memwrite(memWrite), .read_data(dataOut));

endmodule
