`timescale 1ns/1ns

module Beq_Unit( Opcode, DataA, DataB, Zero );

    input [5:0]  Opcode;
    input [31:0] DataA, DataB;

    output       Zero ;

    parameter BEQ = 6'd4;

    assign Zero = ( DataA == DataB ) ? 1'b1 : 1'b0;

endmodule