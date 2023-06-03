/*
  Ctl : 3 bits operations
  // and : 000
  // or  : 001
  // add : 010
  // sub : 110
  // slt : 111
  // srl : 011
*/

`timescale 1ns/1ns

module ALU( Ctl , Shamt, DataA, DataB, DataOut ) ;
  
  input  [2:0]  Ctl ;
  input  [4:0]  Shamt ;  
  input  [31:0] DataA, DataB ;
  
  output [31:0] DataOut ;
  
  wire [31:0] shiftAns, aluAns, sltAns ;
  wire [31:0] carry ;
  
  wire [1:0] sel ;
  wire invertB ;
  
  assign sel = Ctl[1:0] ;
  assign invertB = Ctl[2] ;
  
  ALU_1bit alu0( .Sel( sel ), .DataA( DataA[0] ), .DataB( DataB[0] ), .InvertB( invertB ), .Cin( invertB ), .DataOut( aluAns[0] ), .Cout( carry[0] ) ) ;
  ALU_1bit alu1( .Sel( sel ), .DataA( DataA[1] ), .DataB( DataB[1] ), .InvertB( invertB ), .Cin( carry[0] ), .DataOut( aluAns[1] ), .Cout( carry[1] ) ) ;
  ALU_1bit alu2( .Sel( sel ), .DataA( DataA[2] ), .DataB( DataB[2] ), .InvertB( invertB ), .Cin( carry[1] ), .DataOut( aluAns[2] ), .Cout( carry[2] ) ) ;
  ALU_1bit alu3( .Sel( sel ), .DataA( DataA[3] ), .DataB( DataB[3] ), .InvertB( invertB ), .Cin( carry[2] ), .DataOut( aluAns[3] ), .Cout( carry[3] ) ) ;
  ALU_1bit alu4( .Sel( sel ), .DataA( DataA[4] ), .DataB( DataB[4] ), .InvertB( invertB ), .Cin( carry[3] ), .DataOut( aluAns[4] ), .Cout( carry[4] ) ) ;
  ALU_1bit alu5( .Sel( sel ), .DataA( DataA[5] ), .DataB( DataB[5] ), .InvertB( invertB ), .Cin( carry[4] ), .DataOut( aluAns[5] ), .Cout( carry[5] ) ) ;
  ALU_1bit alu6( .Sel( sel ), .DataA( DataA[6] ), .DataB( DataB[6] ), .InvertB( invertB ), .Cin( carry[5] ), .DataOut( aluAns[6] ), .Cout( carry[6] ) ) ;
  ALU_1bit alu7( .Sel( sel ), .DataA( DataA[7] ), .DataB( DataB[7] ), .InvertB( invertB ), .Cin( carry[6] ), .DataOut( aluAns[7] ), .Cout( carry[7] ) ) ;
  ALU_1bit alu8( .Sel( sel ), .DataA( DataA[8] ), .DataB( DataB[8] ), .InvertB( invertB ), .Cin( carry[7] ), .DataOut( aluAns[8] ), .Cout( carry[8] ) ) ;
  ALU_1bit alu9( .Sel( sel ), .DataA( DataA[9] ), .DataB( DataB[9] ), .InvertB( invertB ), .Cin( carry[8] ), .DataOut( aluAns[9] ), .Cout( carry[9] ) ) ;
  ALU_1bit alu10( .Sel( sel ), .DataA( DataA[10] ), .DataB( DataB[10] ), .InvertB( invertB ), .Cin( carry[9] ), .DataOut( aluAns[10] ), .Cout( carry[10] ) ) ;
  ALU_1bit alu11( .Sel( sel ), .DataA( DataA[11] ), .DataB( DataB[11] ), .InvertB( invertB ), .Cin( carry[10] ), .DataOut( aluAns[11] ), .Cout( carry[11] ) ) ;
  ALU_1bit alu12( .Sel( sel ), .DataA( DataA[12] ), .DataB( DataB[12] ), .InvertB( invertB ), .Cin( carry[11] ), .DataOut( aluAns[12] ), .Cout( carry[12] ) ) ;
  ALU_1bit alu13( .Sel( sel ), .DataA( DataA[13] ), .DataB( DataB[13] ), .InvertB( invertB ), .Cin( carry[12] ), .DataOut( aluAns[13] ), .Cout( carry[13] ) ) ;
  ALU_1bit alu14( .Sel( sel ), .DataA( DataA[14] ), .DataB( DataB[14] ), .InvertB( invertB ), .Cin( carry[13] ), .DataOut( aluAns[14] ), .Cout( carry[14] ) ) ;
  ALU_1bit alu15( .Sel( sel ), .DataA( DataA[15] ), .DataB( DataB[15] ), .InvertB( invertB ), .Cin( carry[14] ), .DataOut( aluAns[15] ), .Cout( carry[15] ) ) ;
  ALU_1bit alu16( .Sel( sel ), .DataA( DataA[16] ), .DataB( DataB[16] ), .InvertB( invertB ), .Cin( carry[15] ), .DataOut( aluAns[16] ), .Cout( carry[16] ) ) ;
  ALU_1bit alu17( .Sel( sel ), .DataA( DataA[17] ), .DataB( DataB[17] ), .InvertB( invertB ), .Cin( carry[16] ), .DataOut( aluAns[17] ), .Cout( carry[17] ) ) ;
  ALU_1bit alu18( .Sel( sel ), .DataA( DataA[18] ), .DataB( DataB[18] ), .InvertB( invertB ), .Cin( carry[17] ), .DataOut( aluAns[18] ), .Cout( carry[18] ) ) ;
  ALU_1bit alu19( .Sel( sel ), .DataA( DataA[19] ), .DataB( DataB[19] ), .InvertB( invertB ), .Cin( carry[18] ), .DataOut( aluAns[19] ), .Cout( carry[19] ) ) ;
  ALU_1bit alu20( .Sel( sel ), .DataA( DataA[20] ), .DataB( DataB[20] ), .InvertB( invertB ), .Cin( carry[19] ), .DataOut( aluAns[20] ), .Cout( carry[20] ) ) ;
  ALU_1bit alu21( .Sel( sel ), .DataA( DataA[21] ), .DataB( DataB[21] ), .InvertB( invertB ), .Cin( carry[20] ), .DataOut( aluAns[21] ), .Cout( carry[21] ) ) ;
  ALU_1bit alu22( .Sel( sel ), .DataA( DataA[22] ), .DataB( DataB[22] ), .InvertB( invertB ), .Cin( carry[21] ), .DataOut( aluAns[22] ), .Cout( carry[22] ) ) ;
  ALU_1bit alu23( .Sel( sel ), .DataA( DataA[23] ), .DataB( DataB[23] ), .InvertB( invertB ), .Cin( carry[22] ), .DataOut( aluAns[23] ), .Cout( carry[23] ) ) ;
  ALU_1bit alu24( .Sel( sel ), .DataA( DataA[24] ), .DataB( DataB[24] ), .InvertB( invertB ), .Cin( carry[23] ), .DataOut( aluAns[24] ), .Cout( carry[24] ) ) ;
  ALU_1bit alu25( .Sel( sel ), .DataA( DataA[25] ), .DataB( DataB[25] ), .InvertB( invertB ), .Cin( carry[24] ), .DataOut( aluAns[25] ), .Cout( carry[25] ) ) ;
  ALU_1bit alu26( .Sel( sel ), .DataA( DataA[26] ), .DataB( DataB[26] ), .InvertB( invertB ), .Cin( carry[25] ), .DataOut( aluAns[26] ), .Cout( carry[26] ) ) ;
  ALU_1bit alu27( .Sel( sel ), .DataA( DataA[27] ), .DataB( DataB[27] ), .InvertB( invertB ), .Cin( carry[26] ), .DataOut( aluAns[27] ), .Cout( carry[27] ) ) ;
  ALU_1bit alu28( .Sel( sel ), .DataA( DataA[28] ), .DataB( DataB[28] ), .InvertB( invertB ), .Cin( carry[27] ), .DataOut( aluAns[28] ), .Cout( carry[28] ) ) ;
  ALU_1bit alu29( .Sel( sel ), .DataA( DataA[29] ), .DataB( DataB[29] ), .InvertB( invertB ), .Cin( carry[28] ), .DataOut( aluAns[29] ), .Cout( carry[29] ) ) ;
  ALU_1bit alu30( .Sel( sel ), .DataA( DataA[30] ), .DataB( DataB[30] ), .InvertB( invertB ), .Cin( carry[29] ), .DataOut( aluAns[30] ), .Cout( carry[30] ) ) ;
  ALU_1bit alu31( .Sel( sel ), .DataA( DataA[31] ), .DataB( DataB[31] ), .InvertB( invertB ), .Cin( carry[30] ), .DataOut( aluAns[31] ), .Cout( carry[31] ) ) ;
  
  Shifter shifter( .DataA( DataA ), .Shamt( Shamt ), .DataOut( shiftAns ) ) ;
  
  assign sltAns = aluAns[31] ? 32'b1 : 32'b0 ;
  
  assign DataOut = ( Ctl == 3'b111 ) ? sltAns : ( Ctl == 3'b011 ) ? shiftAns : aluAns ;
  
endmodule
