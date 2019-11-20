`include "mux.v"

module test_mux();

    wire [31:0] Y;

    reg [31:0] A, B;
    reg        sel;

    mux mux1 (A, B, sel, Y);

    initial begin
        
        A = 32'haaaaaaaa;
        B = 32'h55555555;
        sel = 'h1;

        #10;
        A = 32'h00000000;
        #10
        sel = 'h1;
        #10
        B = 32'hffffffff;
        #5
        A = 32'ha5a5a5a5;
        #5
        sel = 'h0;
        B = 32'hdddddddd;
        #5
        sel = 'hx;
    end

    always @(A or B or sel)
        #1 $display("At t = %0d sel = %0d A = %h B = %h Y = %h",$time, sel,
                    A, B, Y);
endmodule
