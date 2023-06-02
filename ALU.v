endmodule

`timescale 1ns/1ns

module ALU( Ctl, shamt, DataA, DataB, DataOut ) ;
  
  input  [2:0]  Ctl ;
  input  [4:0]  shamt ;  
  input  [31:0] DataA, DataB ;
  
  output [31:0] DataOut ;
  
  wire [31:0] shiftAns, carry, temp ;
  wire [1:0] sel ;
  wire invertB ;
  
  assign sel = Ctl[1:0] ;
  assign invertB = Ctl[2] ;
  
  ALU_1bit alu0( .Sel( sel ), .DataA( DataA[0] ), .DataB( DataB[0] ), .InvertB( invertB ), .Cin( invertB ), .DataOut( temp[0] ), .Cout( carry[0] ) ) ;
  ALU_1bit alu1( .Sel( sel ), .DataA( DataA[1] ), .DataB( DataB[1] ), .InvertB( invertB ), .Cin( carry[0] ), .DataOut( temp[1] ), .Cout( carry[1] ) ) ;
  ALU_1bit alu2( .Sel( sel ), .DataA( DataA[2] ), .DataB( DataB[2] ), .InvertB( invertB ), .Cin( carry[1] ), .DataOut( temp[2] ), .Cout( carry[2] ) ) ;
  ALU_1bit alu3( .Sel( sel ), .DataA( DataA[3] ), .DataB( DataB[3] ), .InvertB( invertB ), .Cin( carry[2] ), .DataOut( temp[3] ), .Cout( carry[3] ) ) ;
  ALU_1bit alu4( .Sel( sel ), .DataA( DataA[4] ), .DataB( DataB[4] ), .InvertB( invertB ), .Cin( carry[3] ), .DataOut( temp[4] ), .Cout( carry[4] ) ) ;
  ALU_1bit alu5( .Sel( sel ), .DataA( DataA[5] ), .DataB( DataB[5] ), .InvertB( invertB ), .Cin( carry[4] ), .DataOut( temp[5] ), .Cout( carry[5] ) ) ;
  ALU_1bit alu6( .Sel( sel ), .DataA( DataA[6] ), .DataB( DataB[6] ), .InvertB( invertB ), .Cin( carry[5] ), .DataOut( temp[6] ), .Cout( carry[6] ) ) ;
  ALU_1bit alu7( .Sel( sel ), .DataA( DataA[7] ), .DataB( DataB[7] ), .InvertB( invertB ), .Cin( carry[6] ), .DataOut( temp[7] ), .Cout( carry[7] ) ) ;
  ALU_1bit alu8( .Sel( sel ), .DataA( DataA[8] ), .DataB( DataB[8] ), .InvertB( invertB ), .Cin( carry[7] ), .DataOut( temp[8] ), .Cout( carry[8] ) ) ;
  ALU_1bit alu9( .Sel( sel ), .DataA( DataA[9] ), .DataB( DataB[9] ), .InvertB( invertB ), .Cin( carry[8] ), .DataOut( temp[9] ), .Cout( carry[9] ) ) ;
  ALU_1bit alu10( .Sel( sel ), .DataA( DataA[10] ), .DataB( DataB[10] ), .InvertB( invertB ), .Cin( carry[9] ), .DataOut( temp[10] ), .Cout( carry[10] ) ) ;
  ALU_1bit alu11( .Sel( sel ), .DataA( DataA[11] ), .DataB( DataB[11] ), .InvertB( invertB ), .Cin( carry[10] ), .DataOut( temp[11] ), .Cout( carry[11] ) ) ;
  ALU_1bit alu12( .Sel( sel ), .DataA( DataA[12] ), .DataB( DataB[12] ), .InvertB( invertB ), .Cin( carry[11] ), .DataOut( temp[12] ), .Cout( carry[12] ) ) ;
  ALU_1bit alu13( .Sel( sel ), .DataA( DataA[13] ), .DataB( DataB[13] ), .InvertB( invertB ), .Cin( carry[12] ), .DataOut( temp[13] ), .Cout( carry[13] ) ) ;
  ALU_1bit alu14( .Sel( sel ), .DataA( DataA[14] ), .DataB( DataB[14] ), .InvertB( invertB ), .Cin( carry[13] ), .DataOut( temp[14] ), .Cout( carry[14] ) ) ;
  ALU_1bit alu15( .Sel( sel ), .DataA( DataA[15] ), .DataB( DataB[15] ), .InvertB( invertB ), .Cin( carry[14] ), .DataOut( temp[15] ), .Cout( carry[15] ) ) ;
  ALU_1bit alu16( .Sel( sel ), .DataA( DataA[16] ), .DataB( DataB[16] ), .InvertB( invertB ), .Cin( carry[15] ), .DataOut( temp[16] ), .Cout( carry[16] ) ) ;
  ALU_1bit alu17( .Sel( sel ), .DataA( DataA[17] ), .DataB( DataB[17] ), .InvertB( invertB ), .Cin( carry[16] ), .DataOut( temp[17] ), .Cout( carry[17] ) ) ;
  ALU_1bit alu18( .Sel( sel ), .DataA( DataA[18] ), .DataB( DataB[18] ), .InvertB( invertB ), .Cin( carry[17] ), .DataOut( temp[18] ), .Cout( carry[18] ) ) ;
  ALU_1bit alu19( .Sel( sel ), .DataA( DataA[19] ), .DataB( DataB[19] ), .InvertB( invertB ), .Cin( carry[18] ), .DataOut( temp[19] ), .Cout( carry[19] ) ) ;
  ALU_1bit alu20( .Sel( sel ), .DataA( DataA[20] ), .DataB( DataB[20] ), .InvertB( invertB ), .Cin( carry[19] ), .DataOut( temp[20] ), .Cout( carry[20] ) ) ;
  ALU_1bit alu21( .Sel( sel ), .DataA( DataA[21] ), .DataB( DataB[21] ), .InvertB( invertB ), .Cin( carry[20] ), .DataOut( temp[21] ), .Cout( carry[21] ) ) ;
  ALU_1bit alu22( .Sel( sel ), .DataA( DataA[22] ), .DataB( DataB[22] ), .InvertB( invertB ), .Cin( carry[21] ), .DataOut( temp[22] ), .Cout( carry[22] ) ) ;
  ALU_1bit alu23( .Sel( sel ), .DataA( DataA[23] ), .DataB( DataB[23] ), .InvertB( invertB ), .Cin( carry[22] ), .DataOut( temp[23] ), .Cout( carry[23] ) ) ;
  ALU_1bit alu24( .Sel( sel ), .DataA( DataA[24] ), .DataB( DataB[24] ), .InvertB( invertB ), .Cin( carry[23] ), .DataOut( temp[24] ), .Cout( carry[24] ) ) ;
  ALU_1bit alu25( .Sel( sel ), .DataA( DataA[25] ), .DataB( DataB[25] ), .InvertB( invertB ), .Cin( carry[24] ), .DataOut( temp[25] ), .Cout( carry[25] ) ) ;
  ALU_1bit alu26( .Sel( sel ), .DataA( DataA[26] ), .DataB( DataB[26] ), .InvertB( invertB ), .Cin( carry[25] ), .DataOut( temp[26] ), .Cout( carry[26] ) ) ;
  ALU_1bit alu27( .Sel( sel ), .DataA( DataA[27] ), .DataB( DataB[27] ), .InvertB( invertB ), .Cin( carry[26] ), .DataOut( temp[27] ), .Cout( carry[27] ) ) ;
  ALU_1bit alu28( .Sel( sel ), .DataA( DataA[28] ), .DataB( DataB[28] ), .InvertB( invertB ), .Cin( carry[27] ), .DataOut( temp[28] ), .Cout( carry[28] ) ) ;
  ALU_1bit alu29( .Sel( sel ), .DataA( DataA[29] ), .DataB( DataB[29] ), .InvertB( invertB ), .Cin( carry[28] ), .DataOut( temp[29] ), .Cout( carry[29] ) ) ;
  ALU_1bit alu30( .Sel( sel ), .DataA( DataA[30] ), .DataB( DataB[30] ), .InvertB( invertB ), .Cin( carry[29] ), .DataOut( temp[30] ), .Cout( carry[30] ) ) ;
  ALU_1bit alu31( .Sel( sel ), .DataA( DataA[31] ), .DataB( DataB[31] ), .InvertB( invertB ), .Cin( carry[30] ), .DataOut( temp[31] ), .Cout( carry[31] ) ) ;
  
  Shifter shifter( .DataA( dataA ), .Shamt( shamt ), .DataOut( shiftAns ) ) ;
  
  assign DataOut = ( Ctl == 3'b011 ) ? ( temp[31] ? 32'b1 : 32'b0 ) : temp ;
  
endmodule
