`timescale 1ns/1ns

module MUX_4to1_1bit( Sel, DataIn0, DataIn1, DataIn2, DataIn3, DataOut );

  input DataIn0 ;
  input DataIn1 ;
  input DataIn2 ;
  input DataIn3 ;
  input [1:0] Sel ;

  output DataOut ;

  assign DataOut = Sel[1] ? ( Sel[0] ? DataIn3 : DataIn2 ) : ( Sel[0] ? DataIn1 : DataIn0 );

endmodule
