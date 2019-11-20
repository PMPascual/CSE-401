//Name: Phillip Pascual
//CSE-401
//Winter 2019
//Lab 1
//Description: Multiplexer module.  Takes in input a b and select, outputs y
//based on a and b.

module mux (a, b, sel, y);
    input [31:0] a, b;
    input sel;
    output [31:0] y;

    assign y = sel ? a : b;
endmodule
