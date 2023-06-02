`timescale 1ns/1ns

module Beq_Unit( Opcode, DataA, DataB, DataOut );

    input [5:0]  Opcode;
    input [31:0] DataA, DataB;

    output       DataOut ;

    parameter BEQ = 6'd4;

    assign DataOut = ( DataA == DataB ) ? 1'b1 : 1'b0;

endmodule
