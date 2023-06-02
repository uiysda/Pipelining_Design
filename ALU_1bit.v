`timescale 1ns/1ns

module ALU_1bit( Sel, DataA, DataB, InvertB, Cin, DataOut, Cout ) ;

  input DataA, DataB, Cin, InvertB ;
  input[1:0] Sel ;
  input InvertB ;

  output DataOut, Cout;

  wire and00, or01, add10_sub11, tempB ;

  assign and00 = DataA & DataB ;
  
  assign or01 = DataA | DataB ;
  
  assign tempB = InvertB ^ DataB ;
  
  FA fullAdder( .DataA( DataA ), .DataB( tempB ), .Cin( Cin ), .Sum( add10_sub11 ), .Cout( Cout ) ) ;
  
  MUX_4to1 selectResult( .Sel( sel ), .DataIn0( and00 ), .DataIn1( or01 ), .DataIn2( add10_sub11 ), .DataIn3( add10_sub11 ), .DataOut( dataOut ) ) ;
  
endmodule
