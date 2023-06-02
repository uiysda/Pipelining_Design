`timescale 1ns/1ns

module MUX_4to1( ALUOut, HiOut, LoOut, Shifter, Signal, dataOut );
  //四個人進來只能選一個出去
  input [31:0] ALUOut ;
  input [31:0] HiOut ;
  input [31:0] LoOut ;
  input [31:0] Shifter ;
  input [1:0] Signal ;

  output [31:0] dataOut ;

  assign dataOut = Signal[1] ? ( Signal[0] ? Shifter : LoOut ) : ( Signal[0] ? HiOut : ALUOut );

endmodule