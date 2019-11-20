module increment(
    input wire [31:0] pcin,
    output reg [31:0] pcout);

    always @ (pcin) pcout <= pcin + 1;
endmodule
