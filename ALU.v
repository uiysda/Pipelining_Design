endmodule

`timescale 1ns/1ns

module ALU( dataA, dataB, shamt, ctl, dataOut ) ;

  input [31:0] dataA, dataB ;
  input [4:0] shamt ;
  input [2:0] ctl ;
  output [31:0] dataOut ;
  
  wire [31:0] shiftAns, carry, temp ;
  wire [1:0] sel ;
  wire invertB ;
  
  assign sel = ctl[1:0] ;
  assign invertB = ctl[2] ;
  
  ALU_1bit alu0( .dataA( dataA[0] ), .dataB( dataB[0] ), .sel( sel ), .invertB( invertB ), .cin( invertB ), .dataOut( temp[0] ), .cout( carry[0] ) ) ;
  ALU_1bit alu1( .dataA( dataA[1] ), .dataB( dataB[1] ), .sel( sel ), .invertB( invertB ), .cin( carry[0] ), .dataOut( temp[1] ), .cout( carry[1] ) ) ;
  ALU_1bit alu2( .dataA( dataA[2] ), .dataB( dataB[2] ), .sel( sel ), .invertB( invertB ), .cin( carry[1] ), .dataOut( temp[2] ), .cout( carry[2] ) ) ;
  ALU_1bit alu3( .dataA( dataA[3] ), .dataB( dataB[3] ), .sel( sel ), .invertB( invertB ), .cin( carry[2] ), .dataOut( temp[3] ), .cout( carry[3] ) ) ;
  ALU_1bit alu4( .dataA( dataA[4] ), .dataB( dataB[4] ), .sel( sel ), .invertB( invertB ), .cin( carry[3] ), .dataOut( temp[4] ), .cout( carry[4] ) ) ;
  ALU_1bit alu5( .dataA( dataA[5] ), .dataB( dataB[5] ), .sel( sel ), .invertB( invertB ), .cin( carry[4] ), .dataOut( temp[5] ), .cout( carry[5] ) ) ;
  ALU_1bit alu6( .dataA( dataA[6] ), .dataB( dataB[6] ), .sel( sel ), .invertB( invertB ), .cin( carry[5] ), .dataOut( temp[6] ), .cout( carry[6] ) ) ;
  ALU_1bit alu7( .dataA( dataA[7] ), .dataB( dataB[7] ), .sel( sel ), .invertB( invertB ), .cin( carry[6] ), .dataOut( temp[7] ), .cout( carry[7] ) ) ;
  ALU_1bit alu8( .dataA( dataA[8] ), .dataB( dataB[8] ), .sel( sel ), .invertB( invertB ), .cin( carry[7] ), .dataOut( temp[8] ), .cout( carry[8] ) ) ;
  ALU_1bit alu9( .dataA( dataA[9] ), .dataB( dataB[9] ), .sel( sel ), .invertB( invertB ), .cin( carry[8] ), .dataOut( temp[9] ), .cout( carry[9] ) ) ;
  ALU_1bit alu10( .dataA( dataA[10] ), .dataB( dataB[10] ), .sel( sel ), .invertB( invertB ), .cin( carry[9] ), .dataOut( temp[10] ), .cout( carry[10] ) ) ;
  ALU_1bit alu11( .dataA( dataA[11] ), .dataB( dataB[11] ), .sel( sel ), .invertB( invertB ), .cin( carry[10] ), .dataOut( temp[11] ), .cout( carry[11] ) ) ;
  ALU_1bit alu12( .dataA( dataA[12] ), .dataB( dataB[12] ), .sel( sel ), .invertB( invertB ), .cin( carry[11] ), .dataOut( temp[12] ), .cout( carry[12] ) ) ;
  ALU_1bit alu13( .dataA( dataA[13] ), .dataB( dataB[13] ), .sel( sel ), .invertB( invertB ), .cin( carry[12] ), .dataOut( temp[13] ), .cout( carry[13] ) ) ;
  ALU_1bit alu14( .dataA( dataA[14] ), .dataB( dataB[14] ), .sel( sel ), .invertB( invertB ), .cin( carry[13] ), .dataOut( temp[14] ), .cout( carry[14] ) ) ;
  ALU_1bit alu15( .dataA( dataA[15] ), .dataB( dataB[15] ), .sel( sel ), .invertB( invertB ), .cin( carry[14] ), .dataOut( temp[15] ), .cout( carry[15] ) ) ;
  ALU_1bit alu16( .dataA( dataA[16] ), .dataB( dataB[16] ), .sel( sel ), .invertB( invertB ), .cin( carry[15] ), .dataOut( temp[16] ), .cout( carry[16] ) ) ;
  ALU_1bit alu17( .dataA( dataA[17] ), .dataB( dataB[17] ), .sel( sel ), .invertB( invertB ), .cin( carry[16] ), .dataOut( temp[17] ), .cout( carry[17] ) ) ;
  ALU_1bit alu18( .dataA( dataA[18] ), .dataB( dataB[18] ), .sel( sel ), .invertB( invertB ), .cin( carry[17] ), .dataOut( temp[18] ), .cout( carry[18] ) ) ;
  ALU_1bit alu19( .dataA( dataA[19] ), .dataB( dataB[19] ), .sel( sel ), .invertB( invertB ), .cin( carry[18] ), .dataOut( temp[19] ), .cout( carry[19] ) ) ;
  ALU_1bit alu20( .dataA( dataA[20] ), .dataB( dataB[20] ), .sel( sel ), .invertB( invertB ), .cin( carry[19] ), .dataOut( temp[20] ), .cout( carry[20] ) ) ;
  ALU_1bit alu21( .dataA( dataA[21] ), .dataB( dataB[21] ), .sel( sel ), .invertB( invertB ), .cin( carry[20] ), .dataOut( temp[21] ), .cout( carry[21] ) ) ;
  ALU_1bit alu22( .dataA( dataA[22] ), .dataB( dataB[22] ), .sel( sel ), .invertB( invertB ), .cin( carry[21] ), .dataOut( temp[22] ), .cout( carry[22] ) ) ;
  ALU_1bit alu23( .dataA( dataA[23] ), .dataB( dataB[23] ), .sel( sel ), .invertB( invertB ), .cin( carry[22] ), .dataOut( temp[23] ), .cout( carry[23] ) ) ;
  ALU_1bit alu24( .dataA( dataA[24] ), .dataB( dataB[24] ), .sel( sel ), .invertB( invertB ), .cin( carry[23] ), .dataOut( temp[24] ), .cout( carry[24] ) ) ;
  ALU_1bit alu25( .dataA( dataA[25] ), .dataB( dataB[25] ), .sel( sel ), .invertB( invertB ), .cin( carry[24] ), .dataOut( temp[25] ), .cout( carry[25] ) ) ;
  ALU_1bit alu26( .dataA( dataA[26] ), .dataB( dataB[26] ), .sel( sel ), .invertB( invertB ), .cin( carry[25] ), .dataOut( temp[26] ), .cout( carry[26] ) ) ;
  ALU_1bit alu27( .dataA( dataA[27] ), .dataB( dataB[27] ), .sel( sel ), .invertB( invertB ), .cin( carry[26] ), .dataOut( temp[27] ), .cout( carry[27] ) ) ;
  ALU_1bit alu28( .dataA( dataA[28] ), .dataB( dataB[28] ), .sel( sel ), .invertB( invertB ), .cin( carry[27] ), .dataOut( temp[28] ), .cout( carry[28] ) ) ;
  ALU_1bit alu29( .dataA( dataA[29] ), .dataB( dataB[29] ), .sel( sel ), .invertB( invertB ), .cin( carry[28] ), .dataOut( temp[29] ), .cout( carry[29] ) ) ;
  ALU_1bit alu30( .dataA( dataA[30] ), .dataB( dataB[30] ), .sel( sel ), .invertB( invertB ), .cin( carry[29] ), .dataOut( temp[30] ), .cout( carry[30] ) ) ;
  ALU_1bit alu31( .dataA( dataA[31] ), .dataB( dataB[31] ), .sel( sel ), .invertB( invertB ), .cin( carry[30] ), .dataOut( temp[31] ), .cout( carry[31] ) ) ;
  
  Shifter shifter( .dataA( dataA ), .shamt( shamt ), .dataOut( shiftAns ) ) ;
  
  assign dataOut = ( ctl == 3'b011 ) ? ( temp[31] ? 32'b1 : 32'b0 ) : temp ;
  
endmodule
