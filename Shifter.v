`timescale 1ns/1ns

module Shifter( dataA, dataB, Signal, dataOut, reset );

  input [31:0] dataA ;
  input [31:0] dataB ;
  input [5:0] Signal ;
  input reset ;
  
  output [31:0] dataOut ;

  wire [31:0] temp0, temp1, temp2, temp3, temp4;

  parameter SRL = 6'b000010;

  // if dataB[0] = 1 => shift right = 1
  MUX_2to1 MUX_2to1_temp0_0( .dataA2( dataA[1] ), .dataA1( dataA[0] ), .dataB( dataB[0] ), .dataOut( temp0[0]  ) );
  MUX_2to1 MUX_2to1_temp0_1( .dataA2( dataA[2] ), .dataA1( dataA[1] ), .dataB( dataB[0] ), .dataOut( temp0[1]  ) );
  MUX_2to1 MUX_2to1_temp0_2( .dataA2( dataA[3] ), .dataA1( dataA[2] ), .dataB( dataB[0] ), .dataOut( temp0[2]  ) );
  MUX_2to1 MUX_2to1_temp0_3( .dataA2( dataA[4] ), .dataA1( dataA[3] ), .dataB( dataB[0] ), .dataOut( temp0[3]  ) );
  MUX_2to1 MUX_2to1_temp0_4( .dataA2( dataA[5] ), .dataA1( dataA[4] ), .dataB( dataB[0] ), .dataOut( temp0[4]  ) );
  MUX_2to1 MUX_2to1_temp0_5( .dataA2( dataA[6] ), .dataA1( dataA[5] ), .dataB( dataB[0] ), .dataOut( temp0[5]  ) );
  MUX_2to1 MUX_2to1_temp0_6( .dataA2( dataA[7] ), .dataA1( dataA[6] ), .dataB( dataB[0] ), .dataOut( temp0[6]  ) );
  MUX_2to1 MUX_2to1_temp0_7( .dataA2( dataA[8] ), .dataA1( dataA[7] ), .dataB( dataB[0] ), .dataOut( temp0[7]  ) );
  MUX_2to1 MUX_2to1_temp0_8( .dataA2( dataA[9] ), .dataA1( dataA[8] ), .dataB( dataB[0] ), .dataOut( temp0[8]  ) );
  MUX_2to1 MUX_2to1_temp0_9( .dataA2( dataA[10] ), .dataA1( dataA[9] ), .dataB( dataB[0] ), .dataOut( temp0[9]  ) );
  MUX_2to1 MUX_2to1_temp0_10( .dataA2( dataA[11] ), .dataA1( dataA[10] ), .dataB( dataB[0] ), .dataOut( temp0[10]  ) );
  MUX_2to1 MUX_2to1_temp0_11( .dataA2( dataA[12] ), .dataA1( dataA[11] ), .dataB( dataB[0] ), .dataOut( temp0[11]  ) );
  MUX_2to1 MUX_2to1_temp0_12( .dataA2( dataA[13] ), .dataA1( dataA[12] ), .dataB( dataB[0] ), .dataOut( temp0[12]  ) );
  MUX_2to1 MUX_2to1_temp0_13( .dataA2( dataA[14] ), .dataA1( dataA[13] ), .dataB( dataB[0] ), .dataOut( temp0[13]  ) );
  MUX_2to1 MUX_2to1_temp0_14( .dataA2( dataA[15] ), .dataA1( dataA[14] ), .dataB( dataB[0] ), .dataOut( temp0[14]  ) );
  MUX_2to1 MUX_2to1_temp0_15( .dataA2( dataA[16] ), .dataA1( dataA[15] ), .dataB( dataB[0] ), .dataOut( temp0[15]  ) );
  MUX_2to1 MUX_2to1_temp0_16( .dataA2( dataA[17] ), .dataA1( dataA[16] ), .dataB( dataB[0] ), .dataOut( temp0[16]  ) );
  MUX_2to1 MUX_2to1_temp0_17( .dataA2( dataA[18] ), .dataA1( dataA[17] ), .dataB( dataB[0] ), .dataOut( temp0[17]  ) );
  MUX_2to1 MUX_2to1_temp0_18( .dataA2( dataA[19] ), .dataA1( dataA[18] ), .dataB( dataB[0] ), .dataOut( temp0[18]  ) );
  MUX_2to1 MUX_2to1_temp0_19( .dataA2( dataA[20] ), .dataA1( dataA[19] ), .dataB( dataB[0] ), .dataOut( temp0[19]  ) );
  MUX_2to1 MUX_2to1_temp0_20( .dataA2( dataA[21] ), .dataA1( dataA[20] ), .dataB( dataB[0] ), .dataOut( temp0[20]  ) );
  MUX_2to1 MUX_2to1_temp0_21( .dataA2( dataA[22] ), .dataA1( dataA[21] ), .dataB( dataB[0] ), .dataOut( temp0[21]  ) );
  MUX_2to1 MUX_2to1_temp0_22( .dataA2( dataA[23] ), .dataA1( dataA[22] ), .dataB( dataB[0] ), .dataOut( temp0[22]  ) );
  MUX_2to1 MUX_2to1_temp0_23( .dataA2( dataA[24] ), .dataA1( dataA[23] ), .dataB( dataB[0] ), .dataOut( temp0[23]  ) );
  MUX_2to1 MUX_2to1_temp0_24( .dataA2( dataA[25] ), .dataA1( dataA[24] ), .dataB( dataB[0] ), .dataOut( temp0[24]  ) );
  MUX_2to1 MUX_2to1_temp0_25( .dataA2( dataA[26] ), .dataA1( dataA[25] ), .dataB( dataB[0] ), .dataOut( temp0[25]  ) );
  MUX_2to1 MUX_2to1_temp0_26( .dataA2( dataA[27] ), .dataA1( dataA[26] ), .dataB( dataB[0] ), .dataOut( temp0[26]  ) );
  MUX_2to1 MUX_2to1_temp0_27( .dataA2( dataA[28] ), .dataA1( dataA[27] ), .dataB( dataB[0] ), .dataOut( temp0[27]  ) );
  MUX_2to1 MUX_2to1_temp0_28( .dataA2( dataA[29] ), .dataA1( dataA[28] ), .dataB( dataB[0] ), .dataOut( temp0[28]  ) );
  MUX_2to1 MUX_2to1_temp0_29( .dataA2( dataA[30] ), .dataA1( dataA[29] ), .dataB( dataB[0] ), .dataOut( temp0[29]  ) );
  MUX_2to1 MUX_2to1_temp0_30( .dataA2( dataA[31] ), .dataA1( dataA[30] ), .dataB( dataB[0] ), .dataOut( temp0[30]  ) );
  MUX_2to1 MUX_2to1_temp0_31( .dataA2( 1'b0 ), .dataA1( dataA[31] ), .dataB( dataB[0] ), .dataOut( temp0[31]  ) );

  // if dataB[1] = 1 => shift right = 2
  MUX_2to1 MUX_2to1_temp1_0( .dataA2( temp0[2] ), .dataA1( temp0[0] ), .dataB( dataB[1] ), .dataOut( temp1[0]  ) );
  MUX_2to1 MUX_2to1_temp1_1( .dataA2( temp0[3] ), .dataA1( temp0[1] ), .dataB( dataB[1] ), .dataOut( temp1[1]  ) );
  MUX_2to1 MUX_2to1_temp1_2( .dataA2( temp0[4] ), .dataA1( temp0[2] ), .dataB( dataB[1] ), .dataOut( temp1[2]  ) );
  MUX_2to1 MUX_2to1_temp1_3( .dataA2( temp0[5] ), .dataA1( temp0[3] ), .dataB( dataB[1] ), .dataOut( temp1[3]  ) );
  MUX_2to1 MUX_2to1_temp1_4( .dataA2( temp0[6] ), .dataA1( temp0[4] ), .dataB( dataB[1] ), .dataOut( temp1[4]  ) );
  MUX_2to1 MUX_2to1_temp1_5( .dataA2( temp0[7] ), .dataA1( temp0[5] ), .dataB( dataB[1] ), .dataOut( temp1[5]  ) );
  MUX_2to1 MUX_2to1_temp1_6( .dataA2( temp0[8] ), .dataA1( temp0[6] ), .dataB( dataB[1] ), .dataOut( temp1[6]  ) );
  MUX_2to1 MUX_2to1_temp1_7( .dataA2( temp0[9] ), .dataA1( temp0[7] ), .dataB( dataB[1] ), .dataOut( temp1[7]  ) );
  MUX_2to1 MUX_2to1_temp1_8( .dataA2( temp0[10] ), .dataA1( temp0[8] ), .dataB( dataB[1] ), .dataOut( temp1[8]  ) );
  MUX_2to1 MUX_2to1_temp1_9( .dataA2( temp0[11] ), .dataA1( temp0[9] ), .dataB( dataB[1] ), .dataOut( temp1[9]  ) );
  MUX_2to1 MUX_2to1_temp1_10( .dataA2( temp0[12] ), .dataA1( temp0[10] ), .dataB( dataB[1] ), .dataOut( temp1[10]  ) );
  MUX_2to1 MUX_2to1_temp1_11( .dataA2( temp0[13] ), .dataA1( temp0[11] ), .dataB( dataB[1] ), .dataOut( temp1[11]  ) );
  MUX_2to1 MUX_2to1_temp1_12( .dataA2( temp0[14] ), .dataA1( temp0[12] ), .dataB( dataB[1] ), .dataOut( temp1[12]  ) );
  MUX_2to1 MUX_2to1_temp1_13( .dataA2( temp0[15] ), .dataA1( temp0[13] ), .dataB( dataB[1] ), .dataOut( temp1[13]  ) );
  MUX_2to1 MUX_2to1_temp1_14( .dataA2( temp0[16] ), .dataA1( temp0[14] ), .dataB( dataB[1] ), .dataOut( temp1[14]  ) );
  MUX_2to1 MUX_2to1_temp1_15( .dataA2( temp0[17] ), .dataA1( temp0[15] ), .dataB( dataB[1] ), .dataOut( temp1[15]  ) );
  MUX_2to1 MUX_2to1_temp1_16( .dataA2( temp0[18] ), .dataA1( temp0[16] ), .dataB( dataB[1] ), .dataOut( temp1[16]  ) );
  MUX_2to1 MUX_2to1_temp1_17( .dataA2( temp0[19] ), .dataA1( temp0[17] ), .dataB( dataB[1] ), .dataOut( temp1[17]  ) );
  MUX_2to1 MUX_2to1_temp1_18( .dataA2( temp0[20] ), .dataA1( temp0[18] ), .dataB( dataB[1] ), .dataOut( temp1[18]  ) );
  MUX_2to1 MUX_2to1_temp1_19( .dataA2( temp0[21] ), .dataA1( temp0[19] ), .dataB( dataB[1] ), .dataOut( temp1[19]  ) );
  MUX_2to1 MUX_2to1_temp1_20( .dataA2( temp0[22] ), .dataA1( temp0[20] ), .dataB( dataB[1] ), .dataOut( temp1[20]  ) );
  MUX_2to1 MUX_2to1_temp1_21( .dataA2( temp0[23] ), .dataA1( temp0[21] ), .dataB( dataB[1] ), .dataOut( temp1[21]  ) );
  MUX_2to1 MUX_2to1_temp1_22( .dataA2( temp0[24] ), .dataA1( temp0[22] ), .dataB( dataB[1] ), .dataOut( temp1[22]  ) );
  MUX_2to1 MUX_2to1_temp1_23( .dataA2( temp0[25] ), .dataA1( temp0[23] ), .dataB( dataB[1] ), .dataOut( temp1[23]  ) );
  MUX_2to1 MUX_2to1_temp1_24( .dataA2( temp0[26] ), .dataA1( temp0[24] ), .dataB( dataB[1] ), .dataOut( temp1[24]  ) );
  MUX_2to1 MUX_2to1_temp1_25( .dataA2( temp0[27] ), .dataA1( temp0[25] ), .dataB( dataB[1] ), .dataOut( temp1[25]  ) );
  MUX_2to1 MUX_2to1_temp1_26( .dataA2( temp0[28] ), .dataA1( temp0[26] ), .dataB( dataB[1] ), .dataOut( temp1[26]  ) );
  MUX_2to1 MUX_2to1_temp1_27( .dataA2( temp0[29] ), .dataA1( temp0[27] ), .dataB( dataB[1] ), .dataOut( temp1[27]  ) );
  MUX_2to1 MUX_2to1_temp1_28( .dataA2( temp0[30] ), .dataA1( temp0[28] ), .dataB( dataB[1] ), .dataOut( temp1[28]  ) );
  MUX_2to1 MUX_2to1_temp1_29( .dataA2( temp0[31] ), .dataA1( temp0[29] ), .dataB( dataB[1] ), .dataOut( temp1[29]  ) );
  MUX_2to1 MUX_2to1_temp1_30( .dataA2( 1'b0 ), .dataA1( temp0[30] ), .dataB( dataB[1] ), .dataOut( temp1[30]  ) );
  MUX_2to1 MUX_2to1_temp1_31( .dataA2( 1'b0 ), .dataA1( temp0[31] ), .dataB( dataB[1] ), .dataOut( temp1[31]  ) );
  
  // if dataB[2] = 1 => shift right = 4
  MUX_2to1 MUX_2to1_temp2_0( .dataA2( temp1[4] ), .dataA1( temp1[0] ), .dataB( dataB[2] ), .dataOut( temp2[0]  ) );
  MUX_2to1 MUX_2to1_temp2_1( .dataA2( temp1[5] ), .dataA1( temp1[1] ), .dataB( dataB[2] ), .dataOut( temp2[1]  ) );
  MUX_2to1 MUX_2to1_temp2_2( .dataA2( temp1[6] ), .dataA1( temp1[2] ), .dataB( dataB[2] ), .dataOut( temp2[2]  ) );
  MUX_2to1 MUX_2to1_temp2_3( .dataA2( temp1[7] ), .dataA1( temp1[3] ), .dataB( dataB[2] ), .dataOut( temp2[3]  ) );
  MUX_2to1 MUX_2to1_temp2_4( .dataA2( temp1[8] ), .dataA1( temp1[4] ), .dataB( dataB[2] ), .dataOut( temp2[4]  ) );
  MUX_2to1 MUX_2to1_temp2_5( .dataA2( temp1[9] ), .dataA1( temp1[5] ), .dataB( dataB[2] ), .dataOut( temp2[5]  ) );
  MUX_2to1 MUX_2to1_temp2_6( .dataA2( temp1[10] ), .dataA1( temp1[6] ), .dataB( dataB[2] ), .dataOut( temp2[6]  ) );
  MUX_2to1 MUX_2to1_temp2_7( .dataA2( temp1[11] ), .dataA1( temp1[7] ), .dataB( dataB[2] ), .dataOut( temp2[7]  ) );
  MUX_2to1 MUX_2to1_temp2_8( .dataA2( temp1[12] ), .dataA1( temp1[8] ), .dataB( dataB[2] ), .dataOut( temp2[8]  ) );
  MUX_2to1 MUX_2to1_temp2_9( .dataA2( temp1[13] ), .dataA1( temp1[9] ), .dataB( dataB[2] ), .dataOut( temp2[9]  ) );
  MUX_2to1 MUX_2to1_temp2_10( .dataA2( temp1[14] ), .dataA1( temp1[10] ), .dataB( dataB[2] ), .dataOut( temp2[10]  ) );
  MUX_2to1 MUX_2to1_temp2_11( .dataA2( temp1[15] ), .dataA1( temp1[11] ), .dataB( dataB[2] ), .dataOut( temp2[11]  ) );
  MUX_2to1 MUX_2to1_temp2_12( .dataA2( temp1[16] ), .dataA1( temp1[12] ), .dataB( dataB[2] ), .dataOut( temp2[12]  ) );
  MUX_2to1 MUX_2to1_temp2_13( .dataA2( temp1[17] ), .dataA1( temp1[13] ), .dataB( dataB[2] ), .dataOut( temp2[13]  ) );
  MUX_2to1 MUX_2to1_temp2_14( .dataA2( temp1[18] ), .dataA1( temp1[14] ), .dataB( dataB[2] ), .dataOut( temp2[14]  ) );
  MUX_2to1 MUX_2to1_temp2_15( .dataA2( temp1[19] ), .dataA1( temp1[15] ), .dataB( dataB[2] ), .dataOut( temp2[15]  ) );
  MUX_2to1 MUX_2to1_temp2_16( .dataA2( temp1[20] ), .dataA1( temp1[16] ), .dataB( dataB[2] ), .dataOut( temp2[16]  ) );
  MUX_2to1 MUX_2to1_temp2_17( .dataA2( temp1[21] ), .dataA1( temp1[17] ), .dataB( dataB[2] ), .dataOut( temp2[17]  ) );
  MUX_2to1 MUX_2to1_temp2_18( .dataA2( temp1[22] ), .dataA1( temp1[18] ), .dataB( dataB[2] ), .dataOut( temp2[18]  ) );
  MUX_2to1 MUX_2to1_temp2_19( .dataA2( temp1[23] ), .dataA1( temp1[19] ), .dataB( dataB[2] ), .dataOut( temp2[19]  ) );
  MUX_2to1 MUX_2to1_temp2_20( .dataA2( temp1[24] ), .dataA1( temp1[20] ), .dataB( dataB[2] ), .dataOut( temp2[20]  ) );
  MUX_2to1 MUX_2to1_temp2_21( .dataA2( temp1[25] ), .dataA1( temp1[21] ), .dataB( dataB[2] ), .dataOut( temp2[21]  ) );
  MUX_2to1 MUX_2to1_temp2_22( .dataA2( temp1[26] ), .dataA1( temp1[22] ), .dataB( dataB[2] ), .dataOut( temp2[22]  ) );
  MUX_2to1 MUX_2to1_temp2_23( .dataA2( temp1[27] ), .dataA1( temp1[23] ), .dataB( dataB[2] ), .dataOut( temp2[23]  ) );
  MUX_2to1 MUX_2to1_temp2_24( .dataA2( temp1[28] ), .dataA1( temp1[24] ), .dataB( dataB[2] ), .dataOut( temp2[24]  ) );
  MUX_2to1 MUX_2to1_temp2_25( .dataA2( temp1[29] ), .dataA1( temp1[25] ), .dataB( dataB[2] ), .dataOut( temp2[25]  ) );
  MUX_2to1 MUX_2to1_temp2_26( .dataA2( temp1[30] ), .dataA1( temp1[26] ), .dataB( dataB[2] ), .dataOut( temp2[26]  ) );
  MUX_2to1 MUX_2to1_temp2_27( .dataA2( temp1[31] ), .dataA1( temp1[27] ), .dataB( dataB[2] ), .dataOut( temp2[27]  ) );
  MUX_2to1 MUX_2to1_temp2_28( .dataA2( 1'b0 ), .dataA1( temp1[28] ), .dataB( dataB[2] ), .dataOut( temp2[28]  ) );
  MUX_2to1 MUX_2to1_temp2_29( .dataA2( 1'b0 ), .dataA1( temp1[29] ), .dataB( dataB[2] ), .dataOut( temp2[29]  ) );
  MUX_2to1 MUX_2to1_temp2_30( .dataA2( 1'b0 ), .dataA1( temp1[30] ), .dataB( dataB[2] ), .dataOut( temp2[30]  ) );
  MUX_2to1 MUX_2to1_temp2_31( .dataA2( 1'b0 ), .dataA1( temp1[31] ), .dataB( dataB[2] ), .dataOut( temp2[31]  ) );
  
  // if dataB[3] = 1 => shift right = 8
  MUX_2to1 MUX_2to1_temp3_0( .dataA2( temp2[8] ), .dataA1( temp2[0] ), .dataB( dataB[3] ), .dataOut( temp3[0]  ) );
  MUX_2to1 MUX_2to1_temp3_1( .dataA2( temp2[9] ), .dataA1( temp2[1] ), .dataB( dataB[3] ), .dataOut( temp3[1]  ) );
  MUX_2to1 MUX_2to1_temp3_2( .dataA2( temp2[10] ), .dataA1( temp2[2] ), .dataB( dataB[3] ), .dataOut( temp3[2]  ) );
  MUX_2to1 MUX_2to1_temp3_3( .dataA2( temp2[11] ), .dataA1( temp2[3] ), .dataB( dataB[3] ), .dataOut( temp3[3]  ) );
  MUX_2to1 MUX_2to1_temp3_4( .dataA2( temp2[12] ), .dataA1( temp2[4] ), .dataB( dataB[3] ), .dataOut( temp3[4]  ) );
  MUX_2to1 MUX_2to1_temp3_5( .dataA2( temp2[13] ), .dataA1( temp2[5] ), .dataB( dataB[3] ), .dataOut( temp3[5]  ) );
  MUX_2to1 MUX_2to1_temp3_6( .dataA2( temp2[14] ), .dataA1( temp2[6] ), .dataB( dataB[3] ), .dataOut( temp3[6]  ) );
  MUX_2to1 MUX_2to1_temp3_7( .dataA2( temp2[15] ), .dataA1( temp2[7] ), .dataB( dataB[3] ), .dataOut( temp3[7]  ) );
  MUX_2to1 MUX_2to1_temp3_8( .dataA2( temp2[16] ), .dataA1( temp2[8] ), .dataB( dataB[3] ), .dataOut( temp3[8]  ) );
  MUX_2to1 MUX_2to1_temp3_9( .dataA2( temp2[17] ), .dataA1( temp2[9] ), .dataB( dataB[3] ), .dataOut( temp3[9]  ) );
  MUX_2to1 MUX_2to1_temp3_10( .dataA2( temp2[18] ), .dataA1( temp2[10] ), .dataB( dataB[3] ), .dataOut( temp3[10]  ) );
  MUX_2to1 MUX_2to1_temp3_11( .dataA2( temp2[19] ), .dataA1( temp2[11] ), .dataB( dataB[3] ), .dataOut( temp3[11]  ) );
  MUX_2to1 MUX_2to1_temp3_12( .dataA2( temp2[20] ), .dataA1( temp2[12] ), .dataB( dataB[3] ), .dataOut( temp3[12]  ) );
  MUX_2to1 MUX_2to1_temp3_13( .dataA2( temp2[21] ), .dataA1( temp2[13] ), .dataB( dataB[3] ), .dataOut( temp3[13]  ) );
  MUX_2to1 MUX_2to1_temp3_14( .dataA2( temp2[22] ), .dataA1( temp2[14] ), .dataB( dataB[3] ), .dataOut( temp3[14]  ) );
  MUX_2to1 MUX_2to1_temp3_15( .dataA2( temp2[23] ), .dataA1( temp2[15] ), .dataB( dataB[3] ), .dataOut( temp3[15]  ) );
  MUX_2to1 MUX_2to1_temp3_16( .dataA2( temp2[24] ), .dataA1( temp2[16] ), .dataB( dataB[3] ), .dataOut( temp3[16]  ) );
  MUX_2to1 MUX_2to1_temp3_17( .dataA2( temp2[25] ), .dataA1( temp2[17] ), .dataB( dataB[3] ), .dataOut( temp3[17]  ) );
  MUX_2to1 MUX_2to1_temp3_18( .dataA2( temp2[26] ), .dataA1( temp2[18] ), .dataB( dataB[3] ), .dataOut( temp3[18]  ) );
  MUX_2to1 MUX_2to1_temp3_19( .dataA2( temp2[27] ), .dataA1( temp2[19] ), .dataB( dataB[3] ), .dataOut( temp3[19]  ) );
  MUX_2to1 MUX_2to1_temp3_20( .dataA2( temp2[28] ), .dataA1( temp2[20] ), .dataB( dataB[3] ), .dataOut( temp3[20]  ) );
  MUX_2to1 MUX_2to1_temp3_21( .dataA2( temp2[29] ), .dataA1( temp2[21] ), .dataB( dataB[3] ), .dataOut( temp3[21]  ) );
  MUX_2to1 MUX_2to1_temp3_22( .dataA2( temp2[30] ), .dataA1( temp2[22] ), .dataB( dataB[3] ), .dataOut( temp3[22]  ) );
  MUX_2to1 MUX_2to1_temp3_23( .dataA2( temp2[31] ), .dataA1( temp2[23] ), .dataB( dataB[3] ), .dataOut( temp3[23]  ) );
  MUX_2to1 MUX_2to1_temp3_24( .dataA2( 1'b0 ), .dataA1( temp2[24] ), .dataB( dataB[3] ), .dataOut( temp3[24]  ) );
  MUX_2to1 MUX_2to1_temp3_25( .dataA2( 1'b0 ), .dataA1( temp2[25] ), .dataB( dataB[3] ), .dataOut( temp3[25]  ) );
  MUX_2to1 MUX_2to1_temp3_26( .dataA2( 1'b0 ), .dataA1( temp2[26] ), .dataB( dataB[3] ), .dataOut( temp3[26]  ) );
  MUX_2to1 MUX_2to1_temp3_27( .dataA2( 1'b0 ), .dataA1( temp2[27] ), .dataB( dataB[3] ), .dataOut( temp3[27]  ) );
  MUX_2to1 MUX_2to1_temp3_28( .dataA2( 1'b0 ), .dataA1( temp2[28] ), .dataB( dataB[3] ), .dataOut( temp3[28]  ) );
  MUX_2to1 MUX_2to1_temp3_29( .dataA2( 1'b0 ), .dataA1( temp2[29] ), .dataB( dataB[3] ), .dataOut( temp3[29]  ) );
  MUX_2to1 MUX_2to1_temp3_30( .dataA2( 1'b0 ), .dataA1( temp2[30] ), .dataB( dataB[3] ), .dataOut( temp3[30]  ) );
  MUX_2to1 MUX_2to1_temp3_31( .dataA2( 1'b0 ), .dataA1( temp2[31] ), .dataB( dataB[3] ), .dataOut( temp3[31]  ) );  
  
  // if dataB[4] = 1 => shift right = 16
  MUX_2to1 MUX_2to1_temp4_0( .dataA2( temp3[16] ), .dataA1( temp3[0] ), .dataB( dataB[4] ), .dataOut( temp4[0]  ) );
  MUX_2to1 MUX_2to1_temp4_1( .dataA2( temp3[17] ), .dataA1( temp3[1] ), .dataB( dataB[4] ), .dataOut( temp4[1]  ) );
  MUX_2to1 MUX_2to1_temp4_2( .dataA2( temp3[18] ), .dataA1( temp3[2] ), .dataB( dataB[4] ), .dataOut( temp4[2]  ) );
  MUX_2to1 MUX_2to1_temp4_3( .dataA2( temp3[19] ), .dataA1( temp3[3] ), .dataB( dataB[4] ), .dataOut( temp4[3]  ) );
  MUX_2to1 MUX_2to1_temp4_4( .dataA2( temp3[20] ), .dataA1( temp3[4] ), .dataB( dataB[4] ), .dataOut( temp4[4]  ) );
  MUX_2to1 MUX_2to1_temp4_5( .dataA2( temp3[21] ), .dataA1( temp3[5] ), .dataB( dataB[4] ), .dataOut( temp4[5]  ) );
  MUX_2to1 MUX_2to1_temp4_6( .dataA2( temp3[22] ), .dataA1( temp3[6] ), .dataB( dataB[4] ), .dataOut( temp4[6]  ) );
  MUX_2to1 MUX_2to1_temp4_7( .dataA2( temp3[23] ), .dataA1( temp3[7] ), .dataB( dataB[4] ), .dataOut( temp4[7]  ) );
  MUX_2to1 MUX_2to1_temp4_8( .dataA2( temp3[24] ), .dataA1( temp3[8] ), .dataB( dataB[4] ), .dataOut( temp4[8]  ) );
  MUX_2to1 MUX_2to1_temp4_9( .dataA2( temp3[25] ), .dataA1( temp3[9] ), .dataB( dataB[4] ), .dataOut( temp4[9]  ) );
  MUX_2to1 MUX_2to1_temp4_10( .dataA2( temp3[26] ), .dataA1( temp3[10] ), .dataB( dataB[4] ), .dataOut( temp4[10]  ) );
  MUX_2to1 MUX_2to1_temp4_11( .dataA2( temp3[27] ), .dataA1( temp3[11] ), .dataB( dataB[4] ), .dataOut( temp4[11]  ) );
  MUX_2to1 MUX_2to1_temp4_12( .dataA2( temp3[28] ), .dataA1( temp3[12] ), .dataB( dataB[4] ), .dataOut( temp4[12]  ) );
  MUX_2to1 MUX_2to1_temp4_13( .dataA2( temp3[29] ), .dataA1( temp3[13] ), .dataB( dataB[4] ), .dataOut( temp4[13]  ) );
  MUX_2to1 MUX_2to1_temp4_14( .dataA2( temp3[30] ), .dataA1( temp3[14] ), .dataB( dataB[4] ), .dataOut( temp4[14]  ) );
  MUX_2to1 MUX_2to1_temp4_15( .dataA2( temp3[31] ), .dataA1( temp3[15] ), .dataB( dataB[4] ), .dataOut( temp4[15]  ) );
  MUX_2to1 MUX_2to1_temp4_16( .dataA2( 1'b0 ), .dataA1( temp3[16] ), .dataB( dataB[4] ), .dataOut( temp4[16]  ) );
  MUX_2to1 MUX_2to1_temp4_17( .dataA2( 1'b0 ), .dataA1( temp3[17] ), .dataB( dataB[4] ), .dataOut( temp4[17]  ) );
  MUX_2to1 MUX_2to1_temp4_18( .dataA2( 1'b0 ), .dataA1( temp3[18] ), .dataB( dataB[4] ), .dataOut( temp4[18]  ) );
  MUX_2to1 MUX_2to1_temp4_19( .dataA2( 1'b0 ), .dataA1( temp3[19] ), .dataB( dataB[4] ), .dataOut( temp4[19]  ) );
  MUX_2to1 MUX_2to1_temp4_20( .dataA2( 1'b0 ), .dataA1( temp3[20] ), .dataB( dataB[4] ), .dataOut( temp4[20]  ) );
  MUX_2to1 MUX_2to1_temp4_21( .dataA2( 1'b0 ), .dataA1( temp3[21] ), .dataB( dataB[4] ), .dataOut( temp4[21]  ) );
  MUX_2to1 MUX_2to1_temp4_22( .dataA2( 1'b0 ), .dataA1( temp3[22] ), .dataB( dataB[4] ), .dataOut( temp4[22]  ) );
  MUX_2to1 MUX_2to1_temp4_23( .dataA2( 1'b0 ), .dataA1( temp3[23] ), .dataB( dataB[4] ), .dataOut( temp4[23]  ) );
  MUX_2to1 MUX_2to1_temp4_24( .dataA2( 1'b0 ), .dataA1( temp3[24] ), .dataB( dataB[4] ), .dataOut( temp4[24]  ) );
  MUX_2to1 MUX_2to1_temp4_25( .dataA2( 1'b0 ), .dataA1( temp3[25] ), .dataB( dataB[4] ), .dataOut( temp4[25]  ) );
  MUX_2to1 MUX_2to1_temp4_26( .dataA2( 1'b0 ), .dataA1( temp3[26] ), .dataB( dataB[4] ), .dataOut( temp4[26]  ) );
  MUX_2to1 MUX_2to1_temp4_27( .dataA2( 1'b0 ), .dataA1( temp3[27] ), .dataB( dataB[4] ), .dataOut( temp4[27]  ) );
  MUX_2to1 MUX_2to1_temp4_28( .dataA2( 1'b0 ), .dataA1( temp3[28] ), .dataB( dataB[4] ), .dataOut( temp4[28]  ) );
  MUX_2to1 MUX_2to1_temp4_29( .dataA2( 1'b0 ), .dataA1( temp3[29] ), .dataB( dataB[4] ), .dataOut( temp4[29]  ) );
  MUX_2to1 MUX_2to1_temp4_30( .dataA2( 1'b0 ), .dataA1( temp3[30] ), .dataB( dataB[4] ), .dataOut( temp4[30]  ) );
  MUX_2to1 MUX_2to1_temp4_31( .dataA2( 1'b0 ), .dataA1( temp3[31] ), .dataB( dataB[4] ), .dataOut( temp4[31]  ) );
  
  // if reset = 1 => reset data, else if Signal = SRL do shift right  
  assign dataOut = reset ? 32'd0 : ( Signal == SRL ) ? temp4 : 32'd0;

endmodule