//Name: Phillip Pascual
//CSE-401
//Winter 2019
//Lab 2
//Description: Control module

module control(
    input wire  [5:0] opcode,
    output reg  [3:0] EX,
    output reg  [2:0] M,
    output reg  [1:0] WB);

    parameter RTYPE = 6'b000000;
    parameter LW    = 6'b100011;
    parameter SW    = 6'b101011;
    parameter BEQ   = 6'b000100;
    parameter NOP   = 6'b100000;

    initial begin
        EX  <= 4'b0000;
        M   <= 3'b000;
        WB  <= 2'b00;
    end

    always @* begin
        case (opcode)
            RTYPE:
            begin
                EX  <= 4'b1100;
                M   <= 3'b000;
                WB  <= 2'b10;
            end

            LW:
            begin
                EX  <= 4'b001;
                M   <= 3'b010;
                WB  <= 2'b11;
            end

            SW:
            begin
                EX  <= 4'bz001;
                M   <= 3'b001;
                WB  <= 2'b0z;
            end

            BEQ:
            begin
                EX  <= 4'bz010;
                M   <= 3'b100;
                WB  <= 2'b0z;
            end

            NOP:
            begin
                EX  <= 4'b1000;
                M   <= 3'b000;
                WB  <= 2'b00;
            end

            default:
                $display ("OPcode not recognized.");
        endcase
    end
endmodule
