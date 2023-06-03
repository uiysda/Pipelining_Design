`timescale 1ns/1ns

module Shifter( DataA, Shamt, DataOut );
  
  input  [4:0]  Shamt ;  
  input  [31:0] DataA ;
  
  output [31:0] DataOut ;

  wire [31:0] temp0, temp1, temp2, temp3, temp4;

  // if dataB[0] = 1 => shift right = 1
  MUX_2to1 MUX_2to1_temp0_0( .Sel( Shamt[0] ), .DataIn0( DataA[0] ), .DataIn1( DataA[1] ), .DataOut( temp0[0]  ) );
  MUX_2to1 MUX_2to1_temp0_1( .Sel( Shamt[0] ), .DataIn0( DataA[1] ), .DataIn1( DataA[2] ), .DataOut( temp0[1]  ) );
  MUX_2to1 MUX_2to1_temp0_2( .Sel( Shamt[0] ), .DataIn0( DataA[2] ), .DataIn1( DataA[3] ), .DataOut( temp0[2]  ) );
  MUX_2to1 MUX_2to1_temp0_3( .Sel( Shamt[0] ), .DataIn0( DataA[3] ), .DataIn1( DataA[4] ), .DataOut( temp0[3]  ) );
  MUX_2to1 MUX_2to1_temp0_4( .Sel( Shamt[0] ), .DataIn0( DataA[4] ), .DataIn1( DataA[5] ), .DataOut( temp0[4]  ) );
  MUX_2to1 MUX_2to1_temp0_5( .Sel( Shamt[0] ), .DataIn0( DataA[5] ), .DataIn1( DataA[6] ), .DataOut( temp0[5]  ) );
  MUX_2to1 MUX_2to1_temp0_6( .Sel( Shamt[0] ), .DataIn0( DataA[6] ), .DataIn1( DataA[7] ), .DataOut( temp0[6]  ) );
  MUX_2to1 MUX_2to1_temp0_7( .Sel( Shamt[0] ), .DataIn0( DataA[7] ), .DataIn1( DataA[8] ), .DataOut( temp0[7]  ) );
  MUX_2to1 MUX_2to1_temp0_8( .Sel( Shamt[0] ), .DataIn0( DataA[8] ), .DataIn1( DataA[9] ), .DataOut( temp0[8]  ) );
  MUX_2to1 MUX_2to1_temp0_9( .Sel( Shamt[0] ), .DataIn0( DataA[9] ), .DataIn1( DataA[10] ), .DataOut( temp0[9]  ) );
  MUX_2to1 MUX_2to1_temp0_10( .Sel( Shamt[0] ), .DataIn0( DataA[10] ), .DataIn1( DataA[11] ), .DataOut( temp0[10]  ) );
  MUX_2to1 MUX_2to1_temp0_11( .Sel( Shamt[0] ), .DataIn0( DataA[11] ), .DataIn1( DataA[12] ), .DataOut( temp0[11]  ) );
  MUX_2to1 MUX_2to1_temp0_12( .Sel( Shamt[0] ), .DataIn0( DataA[12] ), .DataIn1( DataA[13] ), .DataOut( temp0[12]  ) );
  MUX_2to1 MUX_2to1_temp0_13( .Sel( Shamt[0] ), .DataIn0( DataA[13] ), .DataIn1( DataA[14] ), .DataOut( temp0[13]  ) );
  MUX_2to1 MUX_2to1_temp0_14( .Sel( Shamt[0] ), .DataIn0( DataA[14] ), .DataIn1( DataA[15] ), .DataOut( temp0[14]  ) );
  MUX_2to1 MUX_2to1_temp0_15( .Sel( Shamt[0] ), .DataIn0( DataA[15] ), .DataIn1( DataA[16] ), .DataOut( temp0[15]  ) );
  MUX_2to1 MUX_2to1_temp0_16( .Sel( Shamt[0] ), .DataIn0( DataA[16] ), .DataIn1( DataA[17] ), .DataOut( temp0[16]  ) );
  MUX_2to1 MUX_2to1_temp0_17( .Sel( Shamt[0] ), .DataIn0( DataA[17] ), .DataIn1( DataA[18] ), .DataOut( temp0[17]  ) );
  MUX_2to1 MUX_2to1_temp0_18( .Sel( Shamt[0] ), .DataIn0( DataA[18] ), .DataIn1( DataA[19] ), .DataOut( temp0[18]  ) );
  MUX_2to1 MUX_2to1_temp0_19( .Sel( Shamt[0] ), .DataIn0( DataA[19] ), .DataIn1( DataA[20] ), .DataOut( temp0[19]  ) );
  MUX_2to1 MUX_2to1_temp0_20( .Sel( Shamt[0] ), .DataIn0( DataA[20] ), .DataIn1( DataA[21] ), .DataOut( temp0[20]  ) );
  MUX_2to1 MUX_2to1_temp0_21( .Sel( Shamt[0] ), .DataIn0( DataA[21] ), .DataIn1( DataA[22] ), .DataOut( temp0[21]  ) );
  MUX_2to1 MUX_2to1_temp0_22( .Sel( Shamt[0] ), .DataIn0( DataA[22] ), .DataIn1( DataA[23] ), .DataOut( temp0[22]  ) );
  MUX_2to1 MUX_2to1_temp0_23( .Sel( Shamt[0] ), .DataIn0( DataA[23] ), .DataIn1( DataA[24] ), .DataOut( temp0[23]  ) );
  MUX_2to1 MUX_2to1_temp0_24( .Sel( Shamt[0] ), .DataIn0( DataA[24] ), .DataIn1( DataA[25] ), .DataOut( temp0[24]  ) );
  MUX_2to1 MUX_2to1_temp0_25( .Sel( Shamt[0] ), .DataIn0( DataA[25] ), .DataIn1( DataA[26] ), .DataOut( temp0[25]  ) );
  MUX_2to1 MUX_2to1_temp0_26( .Sel( Shamt[0] ), .DataIn0( DataA[26] ), .DataIn1( DataA[27] ), .DataOut( temp0[26]  ) );
  MUX_2to1 MUX_2to1_temp0_27( .Sel( Shamt[0] ), .DataIn0( DataA[27] ), .DataIn1( DataA[28] ), .DataOut( temp0[27]  ) );
  MUX_2to1 MUX_2to1_temp0_28( .Sel( Shamt[0] ), .DataIn0( DataA[28] ), .DataIn1( DataA[29] ), .DataOut( temp0[28]  ) );
  MUX_2to1 MUX_2to1_temp0_29( .Sel( Shamt[0] ), .DataIn0( DataA[29] ), .DataIn1( DataA[30] ), .DataOut( temp0[29]  ) );
  MUX_2to1 MUX_2to1_temp0_30( .Sel( Shamt[0] ), .DataIn0( DataA[30] ), .DataIn1( DataA[31] ), .DataOut( temp0[30]  ) );
  MUX_2to1 MUX_2to1_temp0_31( .Sel( Shamt[0] ), .DataIn0( DataA[31] ), .DataIn1( 1'b0 ), .DataOut( temp0[31]  ) );
  
  // if dataB[1] = 1 => shift right = 2
  MUX_2to1 MUX_2to1_temp1_0( .Sel( Shamt[1] ), .DataIn0( temp0[0] ), .DataIn1( temp0[2] ), .DataOut( temp1[0]  ) );
  MUX_2to1 MUX_2to1_temp1_1( .Sel( Shamt[1] ), .DataIn0( temp0[1] ), .DataIn1( temp0[3] ), .DataOut( temp1[1]  ) );
  MUX_2to1 MUX_2to1_temp1_2( .Sel( Shamt[1] ), .DataIn0( temp0[2] ), .DataIn1( temp0[4] ), .DataOut( temp1[2]  ) );
  MUX_2to1 MUX_2to1_temp1_3( .Sel( Shamt[1] ), .DataIn0( temp0[3] ), .DataIn1( temp0[5] ), .DataOut( temp1[3]  ) );
  MUX_2to1 MUX_2to1_temp1_4( .Sel( Shamt[1] ), .DataIn0( temp0[4] ), .DataIn1( temp0[6] ), .DataOut( temp1[4]  ) );
  MUX_2to1 MUX_2to1_temp1_5( .Sel( Shamt[1] ), .DataIn0( temp0[5] ), .DataIn1( temp0[7] ), .DataOut( temp1[5]  ) );
  MUX_2to1 MUX_2to1_temp1_6( .Sel( Shamt[1] ), .DataIn0( temp0[6] ), .DataIn1( temp0[8] ), .DataOut( temp1[6]  ) );
  MUX_2to1 MUX_2to1_temp1_7( .Sel( Shamt[1] ), .DataIn0( temp0[7] ), .DataIn1( temp0[9] ), .DataOut( temp1[7]  ) );
  MUX_2to1 MUX_2to1_temp1_8( .Sel( Shamt[1] ), .DataIn0( temp0[8] ), .DataIn1( temp0[10] ), .DataOut( temp1[8]  ) );
  MUX_2to1 MUX_2to1_temp1_9( .Sel( Shamt[1] ), .DataIn0( temp0[9] ), .DataIn1( temp0[11] ), .DataOut( temp1[9]  ) );
  MUX_2to1 MUX_2to1_temp1_10( .Sel( Shamt[1] ), .DataIn0( temp0[10] ), .DataIn1( temp0[12] ), .DataOut( temp1[10]  ) );
  MUX_2to1 MUX_2to1_temp1_11( .Sel( Shamt[1] ), .DataIn0( temp0[11] ), .DataIn1( temp0[13] ), .DataOut( temp1[11]  ) );
  MUX_2to1 MUX_2to1_temp1_12( .Sel( Shamt[1] ), .DataIn0( temp0[12] ), .DataIn1( temp0[14] ), .DataOut( temp1[12]  ) );
  MUX_2to1 MUX_2to1_temp1_13( .Sel( Shamt[1] ), .DataIn0( temp0[13] ), .DataIn1( temp0[15] ), .DataOut( temp1[13]  ) );
  MUX_2to1 MUX_2to1_temp1_14( .Sel( Shamt[1] ), .DataIn0( temp0[14] ), .DataIn1( temp0[16] ), .DataOut( temp1[14]  ) );
  MUX_2to1 MUX_2to1_temp1_15( .Sel( Shamt[1] ), .DataIn0( temp0[15] ), .DataIn1( temp0[17] ), .DataOut( temp1[15]  ) );
  MUX_2to1 MUX_2to1_temp1_16( .Sel( Shamt[1] ), .DataIn0( temp0[16] ), .DataIn1( temp0[18] ), .DataOut( temp1[16]  ) );
  MUX_2to1 MUX_2to1_temp1_17( .Sel( Shamt[1] ), .DataIn0( temp0[17] ), .DataIn1( temp0[19] ), .DataOut( temp1[17]  ) );
  MUX_2to1 MUX_2to1_temp1_18( .Sel( Shamt[1] ), .DataIn0( temp0[18] ), .DataIn1( temp0[20] ), .DataOut( temp1[18]  ) );
  MUX_2to1 MUX_2to1_temp1_19( .Sel( Shamt[1] ), .DataIn0( temp0[19] ), .DataIn1( temp0[21] ), .DataOut( temp1[19]  ) );
  MUX_2to1 MUX_2to1_temp1_20( .Sel( Shamt[1] ), .DataIn0( temp0[20] ), .DataIn1( temp0[22] ), .DataOut( temp1[20]  ) );
  MUX_2to1 MUX_2to1_temp1_21( .Sel( Shamt[1] ), .DataIn0( temp0[21] ), .DataIn1( temp0[23] ), .DataOut( temp1[21]  ) );
  MUX_2to1 MUX_2to1_temp1_22( .Sel( Shamt[1] ), .DataIn0( temp0[22] ), .DataIn1( temp0[24] ), .DataOut( temp1[22]  ) );
  MUX_2to1 MUX_2to1_temp1_23( .Sel( Shamt[1] ), .DataIn0( temp0[23] ), .DataIn1( temp0[25] ), .DataOut( temp1[23]  ) );
  MUX_2to1 MUX_2to1_temp1_24( .Sel( Shamt[1] ), .DataIn0( temp0[24] ), .DataIn1( temp0[26] ), .DataOut( temp1[24]  ) );
  MUX_2to1 MUX_2to1_temp1_25( .Sel( Shamt[1] ), .DataIn0( temp0[25] ), .DataIn1( temp0[27] ), .DataOut( temp1[25]  ) );
  MUX_2to1 MUX_2to1_temp1_26( .Sel( Shamt[1] ), .DataIn0( temp0[26] ), .DataIn1( temp0[28] ), .DataOut( temp1[26]  ) );
  MUX_2to1 MUX_2to1_temp1_27( .Sel( Shamt[1] ), .DataIn0( temp0[27] ), .DataIn1( temp0[29] ), .DataOut( temp1[27]  ) );
  MUX_2to1 MUX_2to1_temp1_28( .Sel( Shamt[1] ), .DataIn0( temp0[28] ), .DataIn1( temp0[30] ), .DataOut( temp1[28]  ) );
  MUX_2to1 MUX_2to1_temp1_29( .Sel( Shamt[1] ), .DataIn0( temp0[29] ), .DataIn1( temp0[31] ), .DataOut( temp1[29]  ) );
  MUX_2to1 MUX_2to1_temp1_30( .Sel( Shamt[1] ), .DataIn0( temp0[30] ), .DataIn1( 1'b0 ), .DataOut( temp1[30]  ) );
  MUX_2to1 MUX_2to1_temp1_31( .Sel( Shamt[1] ), .DataIn0( temp0[31] ), .DataIn1( 1'b0 ), .DataOut( temp1[31]  ) );
  
  // if dataB[2] = 1 => shift right = 4
  MUX_2to1 MUX_2to1_temp2_0( .Sel( Shamt[2] ), .DataIn0( temp1[0] ), .DataIn1( temp1[4] ), .DataOut( temp2[0]  ) );
  MUX_2to1 MUX_2to1_temp2_1( .Sel( Shamt[2] ), .DataIn0( temp1[1] ), .DataIn1( temp1[5] ), .DataOut( temp2[1]  ) );
  MUX_2to1 MUX_2to1_temp2_2( .Sel( Shamt[2] ), .DataIn0( temp1[2] ), .DataIn1( temp1[6] ), .DataOut( temp2[2]  ) );
  MUX_2to1 MUX_2to1_temp2_3( .Sel( Shamt[2] ), .DataIn0( temp1[3] ), .DataIn1( temp1[7] ), .DataOut( temp2[3]  ) );
  MUX_2to1 MUX_2to1_temp2_4( .Sel( Shamt[2] ), .DataIn0( temp1[4] ), .DataIn1( temp1[8] ), .DataOut( temp2[4]  ) );
  MUX_2to1 MUX_2to1_temp2_5( .Sel( Shamt[2] ), .DataIn0( temp1[5] ), .DataIn1( temp1[9] ), .DataOut( temp2[5]  ) );
  MUX_2to1 MUX_2to1_temp2_6( .Sel( Shamt[2] ), .DataIn0( temp1[6] ), .DataIn1( temp1[10] ), .DataOut( temp2[6]  ) );
  MUX_2to1 MUX_2to1_temp2_7( .Sel( Shamt[2] ), .DataIn0( temp1[7] ), .DataIn1( temp1[11] ), .DataOut( temp2[7]  ) );
  MUX_2to1 MUX_2to1_temp2_8( .Sel( Shamt[2] ), .DataIn0( temp1[8] ), .DataIn1( temp1[12] ), .DataOut( temp2[8]  ) );
  MUX_2to1 MUX_2to1_temp2_9( .Sel( Shamt[2] ), .DataIn0( temp1[9] ), .DataIn1( temp1[13] ), .DataOut( temp2[9]  ) );
  MUX_2to1 MUX_2to1_temp2_10( .Sel( Shamt[2] ), .DataIn0( temp1[10] ), .DataIn1( temp1[14] ), .DataOut( temp2[10]  ) );
  MUX_2to1 MUX_2to1_temp2_11( .Sel( Shamt[2] ), .DataIn0( temp1[11] ), .DataIn1( temp1[15] ), .DataOut( temp2[11]  ) );
  MUX_2to1 MUX_2to1_temp2_12( .Sel( Shamt[2] ), .DataIn0( temp1[12] ), .DataIn1( temp1[16] ), .DataOut( temp2[12]  ) );
  MUX_2to1 MUX_2to1_temp2_13( .Sel( Shamt[2] ), .DataIn0( temp1[13] ), .DataIn1( temp1[17] ), .DataOut( temp2[13]  ) );
  MUX_2to1 MUX_2to1_temp2_14( .Sel( Shamt[2] ), .DataIn0( temp1[14] ), .DataIn1( temp1[18] ), .DataOut( temp2[14]  ) );
  MUX_2to1 MUX_2to1_temp2_15( .Sel( Shamt[2] ), .DataIn0( temp1[15] ), .DataIn1( temp1[19] ), .DataOut( temp2[15]  ) );
  MUX_2to1 MUX_2to1_temp2_16( .Sel( Shamt[2] ), .DataIn0( temp1[16] ), .DataIn1( temp1[20] ), .DataOut( temp2[16]  ) );
  MUX_2to1 MUX_2to1_temp2_17( .Sel( Shamt[2] ), .DataIn0( temp1[17] ), .DataIn1( temp1[21] ), .DataOut( temp2[17]  ) );
  MUX_2to1 MUX_2to1_temp2_18( .Sel( Shamt[2] ), .DataIn0( temp1[18] ), .DataIn1( temp1[22] ), .DataOut( temp2[18]  ) );
  MUX_2to1 MUX_2to1_temp2_19( .Sel( Shamt[2] ), .DataIn0( temp1[19] ), .DataIn1( temp1[23] ), .DataOut( temp2[19]  ) );
  MUX_2to1 MUX_2to1_temp2_20( .Sel( Shamt[2] ), .DataIn0( temp1[20] ), .DataIn1( temp1[24] ), .DataOut( temp2[20]  ) );
  MUX_2to1 MUX_2to1_temp2_21( .Sel( Shamt[2] ), .DataIn0( temp1[21] ), .DataIn1( temp1[25] ), .DataOut( temp2[21]  ) );
  MUX_2to1 MUX_2to1_temp2_22( .Sel( Shamt[2] ), .DataIn0( temp1[22] ), .DataIn1( temp1[26] ), .DataOut( temp2[22]  ) );
  MUX_2to1 MUX_2to1_temp2_23( .Sel( Shamt[2] ), .DataIn0( temp1[23] ), .DataIn1( temp1[27] ), .DataOut( temp2[23]  ) );
  MUX_2to1 MUX_2to1_temp2_24( .Sel( Shamt[2] ), .DataIn0( temp1[24] ), .DataIn1( temp1[28] ), .DataOut( temp2[24]  ) );
  MUX_2to1 MUX_2to1_temp2_25( .Sel( Shamt[2] ), .DataIn0( temp1[25] ), .DataIn1( temp1[29] ), .DataOut( temp2[25]  ) );
  MUX_2to1 MUX_2to1_temp2_26( .Sel( Shamt[2] ), .DataIn0( temp1[26] ), .DataIn1( temp1[30] ), .DataOut( temp2[26]  ) );
  MUX_2to1 MUX_2to1_temp2_27( .Sel( Shamt[2] ), .DataIn0( temp1[27] ), .DataIn1( temp1[31] ), .DataOut( temp2[27]  ) );
  MUX_2to1 MUX_2to1_temp2_28( .Sel( Shamt[2] ), .DataIn0( temp1[28] ), .DataIn1( 1'b0 ), .DataOut( temp2[28]  ) );
  MUX_2to1 MUX_2to1_temp2_29( .Sel( Shamt[2] ), .DataIn0( temp1[29] ), .DataIn1( 1'b0 ), .DataOut( temp2[29]  ) );
  MUX_2to1 MUX_2to1_temp2_30( .Sel( Shamt[2] ), .DataIn0( temp1[30] ), .DataIn1( 1'b0 ), .DataOut( temp2[30]  ) );
  MUX_2to1 MUX_2to1_temp2_31( .Sel( Shamt[2] ), .DataIn0( temp1[31] ), .DataIn1( 1'b0 ), .DataOut( temp2[31]  ) );
  
  // if dataB[3] = 1 => shift right = 8
  MUX_2to1 MUX_2to1_temp4_0( .Sel( Shamt[3] ), .DataIn0( temp2[0] ), .DataIn1( temp2[8] ), .DataOut( temp3[0]  ) );
  MUX_2to1 MUX_2to1_temp4_1( .Sel( Shamt[3] ), .DataIn0( temp2[1] ), .DataIn1( temp2[9] ), .DataOut( temp3[1]  ) );
  MUX_2to1 MUX_2to1_temp4_2( .Sel( Shamt[3] ), .DataIn0( temp2[2] ), .DataIn1( temp2[10] ), .DataOut( temp3[2]  ) );
  MUX_2to1 MUX_2to1_temp4_3( .Sel( Shamt[3] ), .DataIn0( temp2[3] ), .DataIn1( temp2[11] ), .DataOut( temp3[3]  ) );
  MUX_2to1 MUX_2to1_temp4_4( .Sel( Shamt[3] ), .DataIn0( temp2[4] ), .DataIn1( temp2[12] ), .DataOut( temp3[4]  ) );
  MUX_2to1 MUX_2to1_temp4_5( .Sel( Shamt[3] ), .DataIn0( temp2[5] ), .DataIn1( temp2[13] ), .DataOut( temp3[5]  ) );
  MUX_2to1 MUX_2to1_temp4_6( .Sel( Shamt[3] ), .DataIn0( temp2[6] ), .DataIn1( temp2[14] ), .DataOut( temp3[6]  ) );
  MUX_2to1 MUX_2to1_temp4_7( .Sel( Shamt[3] ), .DataIn0( temp2[7] ), .DataIn1( temp2[15] ), .DataOut( temp3[7]  ) );
  MUX_2to1 MUX_2to1_temp4_8( .Sel( Shamt[3] ), .DataIn0( temp2[8] ), .DataIn1( temp2[16] ), .DataOut( temp3[8]  ) );
  MUX_2to1 MUX_2to1_temp4_9( .Sel( Shamt[3] ), .DataIn0( temp2[9] ), .DataIn1( temp2[17] ), .DataOut( temp3[9]  ) );
  MUX_2to1 MUX_2to1_temp4_10( .Sel( Shamt[3] ), .DataIn0( temp2[10] ), .DataIn1( temp2[18] ), .DataOut( temp3[10]  ) );
  MUX_2to1 MUX_2to1_temp4_11( .Sel( Shamt[3] ), .DataIn0( temp2[11] ), .DataIn1( temp2[19] ), .DataOut( temp3[11]  ) );
  MUX_2to1 MUX_2to1_temp4_12( .Sel( Shamt[3] ), .DataIn0( temp2[12] ), .DataIn1( temp2[20] ), .DataOut( temp3[12]  ) );
  MUX_2to1 MUX_2to1_temp4_13( .Sel( Shamt[3] ), .DataIn0( temp2[13] ), .DataIn1( temp2[21] ), .DataOut( temp3[13]  ) );
  MUX_2to1 MUX_2to1_temp4_14( .Sel( Shamt[3] ), .DataIn0( temp2[14] ), .DataIn1( temp2[22] ), .DataOut( temp3[14]  ) );
  MUX_2to1 MUX_2to1_temp4_15( .Sel( Shamt[3] ), .DataIn0( temp2[15] ), .DataIn1( temp2[23] ), .DataOut( temp3[15]  ) );
  MUX_2to1 MUX_2to1_temp4_16( .Sel( Shamt[3] ), .DataIn0( temp2[16] ), .DataIn1( temp2[24] ), .DataOut( temp3[16]  ) );
  MUX_2to1 MUX_2to1_temp4_17( .Sel( Shamt[3] ), .DataIn0( temp2[17] ), .DataIn1( temp2[25] ), .DataOut( temp3[17]  ) );
  MUX_2to1 MUX_2to1_temp4_18( .Sel( Shamt[3] ), .DataIn0( temp2[18] ), .DataIn1( temp2[26] ), .DataOut( temp3[18]  ) );
  MUX_2to1 MUX_2to1_temp4_19( .Sel( Shamt[3] ), .DataIn0( temp2[19] ), .DataIn1( temp2[27] ), .DataOut( temp3[19]  ) );
  MUX_2to1 MUX_2to1_temp4_20( .Sel( Shamt[3] ), .DataIn0( temp2[20] ), .DataIn1( temp2[28] ), .DataOut( temp3[20]  ) );
  MUX_2to1 MUX_2to1_temp4_21( .Sel( Shamt[3] ), .DataIn0( temp2[21] ), .DataIn1( temp2[29] ), .DataOut( temp3[21]  ) );
  MUX_2to1 MUX_2to1_temp4_22( .Sel( Shamt[3] ), .DataIn0( temp2[22] ), .DataIn1( temp2[30] ), .DataOut( temp3[22]  ) );
  MUX_2to1 MUX_2to1_temp4_23( .Sel( Shamt[3] ), .DataIn0( temp2[23] ), .DataIn1( temp2[31] ), .DataOut( temp3[23]  ) );
  MUX_2to1 MUX_2to1_temp4_24( .Sel( Shamt[3] ), .DataIn0( temp2[24] ), .DataIn1( 1'b0 ), .DataOut( temp3[24]  ) );
  MUX_2to1 MUX_2to1_temp4_25( .Sel( Shamt[3] ), .DataIn0( temp2[25] ), .DataIn1( 1'b0 ), .DataOut( temp3[25]  ) );
  MUX_2to1 MUX_2to1_temp4_26( .Sel( Shamt[3] ), .DataIn0( temp2[26] ), .DataIn1( 1'b0 ), .DataOut( temp3[26]  ) );
  MUX_2to1 MUX_2to1_temp4_27( .Sel( Shamt[3] ), .DataIn0( temp2[27] ), .DataIn1( 1'b0 ), .DataOut( temp3[27]  ) );
  MUX_2to1 MUX_2to1_temp4_28( .Sel( Shamt[3] ), .DataIn0( temp2[28] ), .DataIn1( 1'b0 ), .DataOut( temp3[28]  ) );
  MUX_2to1 MUX_2to1_temp4_29( .Sel( Shamt[3] ), .DataIn0( temp2[29] ), .DataIn1( 1'b0 ), .DataOut( temp3[29]  ) );
  MUX_2to1 MUX_2to1_temp4_30( .Sel( Shamt[3] ), .DataIn0( temp2[30] ), .DataIn1( 1'b0 ), .DataOut( temp3[30]  ) );
  MUX_2to1 MUX_2to1_temp4_31( .Sel( Shamt[3] ), .DataIn0( temp2[31] ), .DataIn1( 1'b0 ), .DataOut( temp3[31]  ) );
  
  // if dataB[4] = 1 => shift right = 16
  MUX_2to1 MUX_2to1_temp5_0( .Sel( Shamt[4] ), .DataIn0( temp3[0] ), .DataIn1( temp3[16] ), .DataOut( temp4[0]  ) );
  MUX_2to1 MUX_2to1_temp5_1( .Sel( Shamt[4] ), .DataIn0( temp3[1] ), .DataIn1( temp3[17] ), .DataOut( temp4[1]  ) );
  MUX_2to1 MUX_2to1_temp5_2( .Sel( Shamt[4] ), .DataIn0( temp3[2] ), .DataIn1( temp3[18] ), .DataOut( temp4[2]  ) );
  MUX_2to1 MUX_2to1_temp5_3( .Sel( Shamt[4] ), .DataIn0( temp3[3] ), .DataIn1( temp3[19] ), .DataOut( temp4[3]  ) );
  MUX_2to1 MUX_2to1_temp5_4( .Sel( Shamt[4] ), .DataIn0( temp3[4] ), .DataIn1( temp3[20] ), .DataOut( temp4[4]  ) );
  MUX_2to1 MUX_2to1_temp5_5( .Sel( Shamt[4] ), .DataIn0( temp3[5] ), .DataIn1( temp3[21] ), .DataOut( temp4[5]  ) );
  MUX_2to1 MUX_2to1_temp5_6( .Sel( Shamt[4] ), .DataIn0( temp3[6] ), .DataIn1( temp3[22] ), .DataOut( temp4[6]  ) );
  MUX_2to1 MUX_2to1_temp5_7( .Sel( Shamt[4] ), .DataIn0( temp3[7] ), .DataIn1( temp3[23] ), .DataOut( temp4[7]  ) );
  MUX_2to1 MUX_2to1_temp5_8( .Sel( Shamt[4] ), .DataIn0( temp3[8] ), .DataIn1( temp3[24] ), .DataOut( temp4[8]  ) );
  MUX_2to1 MUX_2to1_temp5_9( .Sel( Shamt[4] ), .DataIn0( temp3[9] ), .DataIn1( temp3[25] ), .DataOut( temp4[9]  ) );
  MUX_2to1 MUX_2to1_temp5_10( .Sel( Shamt[4] ), .DataIn0( temp3[10] ), .DataIn1( temp3[26] ), .DataOut( temp4[10]  ) );
  MUX_2to1 MUX_2to1_temp5_11( .Sel( Shamt[4] ), .DataIn0( temp3[11] ), .DataIn1( temp3[27] ), .DataOut( temp4[11]  ) );
  MUX_2to1 MUX_2to1_temp5_12( .Sel( Shamt[4] ), .DataIn0( temp3[12] ), .DataIn1( temp3[28] ), .DataOut( temp4[12]  ) );
  MUX_2to1 MUX_2to1_temp5_13( .Sel( Shamt[4] ), .DataIn0( temp3[13] ), .DataIn1( temp3[29] ), .DataOut( temp4[13]  ) );
  MUX_2to1 MUX_2to1_temp5_14( .Sel( Shamt[4] ), .DataIn0( temp3[14] ), .DataIn1( temp3[30] ), .DataOut( temp4[14]  ) );
  MUX_2to1 MUX_2to1_temp5_15( .Sel( Shamt[4] ), .DataIn0( temp3[15] ), .DataIn1( temp3[31] ), .DataOut( temp4[15]  ) );
  MUX_2to1 MUX_2to1_temp5_16( .Sel( Shamt[4] ), .DataIn0( temp3[16] ), .DataIn1( 1'b0 ), .DataOut( temp4[16]  ) );
  MUX_2to1 MUX_2to1_temp5_17( .Sel( Shamt[4] ), .DataIn0( temp3[17] ), .DataIn1( 1'b0 ), .DataOut( temp4[17]  ) );
  MUX_2to1 MUX_2to1_temp5_18( .Sel( Shamt[4] ), .DataIn0( temp3[18] ), .DataIn1( 1'b0 ), .DataOut( temp4[18]  ) );
  MUX_2to1 MUX_2to1_temp5_19( .Sel( Shamt[4] ), .DataIn0( temp3[19] ), .DataIn1( 1'b0 ), .DataOut( temp4[19]  ) );
  MUX_2to1 MUX_2to1_temp5_20( .Sel( Shamt[4] ), .DataIn0( temp3[20] ), .DataIn1( 1'b0 ), .DataOut( temp4[20]  ) );
  MUX_2to1 MUX_2to1_temp5_21( .Sel( Shamt[4] ), .DataIn0( temp3[21] ), .DataIn1( 1'b0 ), .DataOut( temp4[21]  ) );
  MUX_2to1 MUX_2to1_temp5_22( .Sel( Shamt[4] ), .DataIn0( temp3[22] ), .DataIn1( 1'b0 ), .DataOut( temp4[22]  ) );
  MUX_2to1 MUX_2to1_temp5_23( .Sel( Shamt[4] ), .DataIn0( temp3[23] ), .DataIn1( 1'b0 ), .DataOut( temp4[23]  ) );
  MUX_2to1 MUX_2to1_temp5_24( .Sel( Shamt[4] ), .DataIn0( temp3[24] ), .DataIn1( 1'b0 ), .DataOut( temp4[24]  ) );
  MUX_2to1 MUX_2to1_temp5_25( .Sel( Shamt[4] ), .DataIn0( temp3[25] ), .DataIn1( 1'b0 ), .DataOut( temp4[25]  ) );
  MUX_2to1 MUX_2to1_temp5_26( .Sel( Shamt[4] ), .DataIn0( temp3[26] ), .DataIn1( 1'b0 ), .DataOut( temp4[26]  ) );
  MUX_2to1 MUX_2to1_temp5_27( .Sel( Shamt[4] ), .DataIn0( temp3[27] ), .DataIn1( 1'b0 ), .DataOut( temp4[27]  ) );
  MUX_2to1 MUX_2to1_temp5_28( .Sel( Shamt[4] ), .DataIn0( temp3[28] ), .DataIn1( 1'b0 ), .DataOut( temp4[28]  ) );
  MUX_2to1 MUX_2to1_temp5_29( .Sel( Shamt[4] ), .DataIn0( temp3[29] ), .DataIn1( 1'b0 ), .DataOut( temp4[29]  ) );
  MUX_2to1 MUX_2to1_temp5_30( .Sel( Shamt[4] ), .DataIn0( temp3[30] ), .DataIn1( 1'b0 ), .DataOut( temp4[30]  ) );
  MUX_2to1 MUX_2to1_temp5_31( .Sel( Shamt[4] ), .DataIn0( temp3[31] ), .DataIn1( 1'b0 ), .DataOut( temp4[31]  ) );
  
  // if reset = 1 => reset data, else if Signal = SRL do shift right  
  assign DataOut = temp4;

endmodule

