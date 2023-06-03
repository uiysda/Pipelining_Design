`timescale 1ns/1ns

module ALU_1bit( Sel, DataA, DataB, InvertB, Cin, DataOut, Cout ) ;

  input       DataA, DataB, InvertB, Cin ;
  input [1:0] Sel ;
  
  output      DataOut, Cout;
  
  wire        and00, or01, add_sub10, slt11, tempB ;

  assign and00 = DataA & DataB ;
  
  assign or01 = DataA | DataB ;
  
  assign tempB = InvertB ^ DataB ;
  
  FA fullAdder( .DataA( DataA ), .DataB( tempB ), .Cin( Cin ), .Sum( add_sub10 ), .Cout( Cout ) ) ;
  
  assign slt11 = add_sub10;

  MUX_4to1 selectResult( .Sel( Sel ), .DataIn0( and00 ), .DataIn1( or01 ), .DataIn2( add_sub10 ), .DataIn3( slt11 ), .DataOut( DataOut ) ) ;
  
endmodule
