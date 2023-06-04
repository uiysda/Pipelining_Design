`timescale 1ns/1ns

module MUX_4to1 #( parameter Width = 32 ) ( Sel, DataIn0, DataIn1, DataIn2, DataIn3, DataOut );

  input [Width-1:0] DataIn0 ;
  input [Width-1:0] DataIn1 ;
  input [Width-1:0] DataIn2 ;
  input [Width-1:0] DataIn3 ;
  input [1:0] Sel ;

  output [Width-1:0] DataOut ;

  assign DataOut = Sel[1] ? ( Sel[0] ? DataIn3 : DataIn2 ) : ( Sel[0] ? DataIn1 : DataIn0 );

endmodule


