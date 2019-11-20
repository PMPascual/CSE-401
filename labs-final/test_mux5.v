`include "mux_5.v"

module test();

    wire    [31:0]   Y;

    reg     [31:0]   A,B;
    reg             sel;
    
    mux_5 mux1 (
        .y(Y), 
        .a(A), 
        .b(B), 
        .sel(sel)
    );

    initial begin

        A = 5'b01010;
        B = 5'b10101;
        sel = 1'b1;
        #10
        A = 5'b00000;
        #10
        sel = 1'b1;
        #10
        B = 5'b11111;
        #5
        A = 5'b00101;
        #5
        sel = 1'b0;
        B = 5'b11101;
        #5
        sel = 1'bx;
    end

    always @(A or B or sel)
        #1 $display("At t = %0d sel = %b B = %b Y = %b", $time, sel, A, B, Y);

endmodule
