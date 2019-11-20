`include "mem.v"

module test_mem();

    wire [31:0] dataOut;

    reg [31:0] address,
               data;
   // reg        memRead,
   //            memWrite;

    initial begin
       // memRead = 'h1;
       // memWrite = 'h0;
        address = 32'h1;

        #1;
       // memRead = 'h0;
       // memWrite = 'h1;
        address = 32'h1;
        data = ~address;

        #1;
       // memRead = 1;
       // memWrite = 0;
        address = 32'h2;

        #1;
       // memRead = 1;
       // memWrite = 1;
        address = 32'h2;
        data = ~ address;

        #1;
       // memRead = 1;
       // memWrite = 0;
        address = 32'h4;

        #1;
       // memRead = 0;
       // memWrite = 1;
        address = 32'h4;
        data = ~address;

        #1;
       // memRead = 1;
       // memWrite = 0;
        address = 32'h8;

        #1;
       // memRead = 1;
       // memWrite = 1;
        address = 32'h8;
        data = ~address;

        #1;

        $finish;
    end

    mem mem1(
        .addr(address),
        //.write_data(data),
        //.memread(memRead),
        //.memwrite(memWrite),
        .data(dataOut));
endmodule
