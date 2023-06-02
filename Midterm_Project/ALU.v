`timescale 1ns/1ns

module ALU( dataA, dataB, Signal, reset, dataOut );

  input [31:0] dataA, dataB;
  input [5:0] Signal;
  input reset;

  output [31:0] dataOut;

  wire [31:0] cout, temp;
  wire cin;
  
  parameter AND = 6'b100100;
  parameter OR  = 6'b100101;
  parameter ADD = 6'b100000;
  parameter SUB = 6'b100010;
  parameter SLT = 6'b101010;

  // if Signal is sub set carry in = 1
  assign cin = ( Signal == SUB || Signal == SLT) ? 1'b1 : 1'b0;  

  // combine 1 bit ALU one by one to get 32 bits ALU
  ALU_1bit alu0( .dataA( dataA[0] ), .dataB( dataB[0] ), .Signal( Signal ), .cin( cin ), .dataOut( temp[0] ), .cout( cout[0] ) );
  ALU_1bit alu1( .dataA( dataA[1] ), .dataB( dataB[1] ), .Signal( Signal ), .cin( cout[0] ), .dataOut( temp[1] ), .cout( cout[1] ) );
  ALU_1bit alu2( .dataA( dataA[2] ), .dataB( dataB[2] ), .Signal( Signal ), .cin( cout[1] ), .dataOut( temp[2] ), .cout( cout[2] ) );
  ALU_1bit alu3( .dataA( dataA[3] ), .dataB( dataB[3] ), .Signal( Signal ), .cin( cout[2] ), .dataOut( temp[3] ), .cout( cout[3] ) );
  ALU_1bit alu4( .dataA( dataA[4] ), .dataB( dataB[4] ), .Signal( Signal ), .cin( cout[3] ), .dataOut( temp[4] ), .cout( cout[4] ) );
  ALU_1bit alu5( .dataA( dataA[5] ), .dataB( dataB[5] ), .Signal( Signal ), .cin( cout[4] ), .dataOut( temp[5] ), .cout( cout[5] ) );
  ALU_1bit alu6( .dataA( dataA[6] ), .dataB( dataB[6] ), .Signal( Signal ), .cin( cout[5] ), .dataOut( temp[6] ), .cout( cout[6] ) );
  ALU_1bit alu7( .dataA( dataA[7] ), .dataB( dataB[7] ), .Signal( Signal ), .cin( cout[6] ), .dataOut( temp[7] ), .cout( cout[7] ) );
  ALU_1bit alu8( .dataA( dataA[8] ), .dataB( dataB[8] ), .Signal( Signal ), .cin( cout[7] ), .dataOut( temp[8] ), .cout( cout[8] ) );
  ALU_1bit alu9( .dataA( dataA[9] ), .dataB( dataB[9] ), .Signal( Signal ), .cin( cout[8] ), .dataOut( temp[9] ), .cout( cout[9] ) );
  ALU_1bit alu10( .dataA( dataA[10] ), .dataB( dataB[10] ), .Signal( Signal ), .cin( cout[9] ), .dataOut( temp[10] ), .cout( cout[10] ) );
  ALU_1bit alu11( .dataA( dataA[11] ), .dataB( dataB[11] ), .Signal( Signal ), .cin( cout[10] ), .dataOut( temp[11] ), .cout( cout[11] ) );
  ALU_1bit alu12( .dataA( dataA[12] ), .dataB( dataB[12] ), .Signal( Signal ), .cin( cout[11] ), .dataOut( temp[12] ), .cout( cout[12] ) );
  ALU_1bit alu13( .dataA( dataA[13] ), .dataB( dataB[13] ), .Signal( Signal ), .cin( cout[12] ), .dataOut( temp[13] ), .cout( cout[13] ) );
  ALU_1bit alu14( .dataA( dataA[14] ), .dataB( dataB[14] ), .Signal( Signal ), .cin( cout[13] ), .dataOut( temp[14] ), .cout( cout[14] ) );
  ALU_1bit alu15( .dataA( dataA[15] ), .dataB( dataB[15] ), .Signal( Signal ), .cin( cout[14] ), .dataOut( temp[15] ), .cout( cout[15] ) );
  ALU_1bit alu16( .dataA( dataA[16] ), .dataB( dataB[16] ), .Signal( Signal ), .cin( cout[15] ), .dataOut( temp[16] ), .cout( cout[16] ) );
  ALU_1bit alu17( .dataA( dataA[17] ), .dataB( dataB[17] ), .Signal( Signal ), .cin( cout[16] ), .dataOut( temp[17] ), .cout( cout[17] ) );
  ALU_1bit alu18( .dataA( dataA[18] ), .dataB( dataB[18] ), .Signal( Signal ), .cin( cout[17] ), .dataOut( temp[18] ), .cout( cout[18] ) );
  ALU_1bit alu19( .dataA( dataA[19] ), .dataB( dataB[19] ), .Signal( Signal ), .cin( cout[18] ), .dataOut( temp[19] ), .cout( cout[19] ) );
  ALU_1bit alu20( .dataA( dataA[20] ), .dataB( dataB[20] ), .Signal( Signal ), .cin( cout[19] ), .dataOut( temp[20] ), .cout( cout[20] ) );
  ALU_1bit alu21( .dataA( dataA[21] ), .dataB( dataB[21] ), .Signal( Signal ), .cin( cout[20] ), .dataOut( temp[21] ), .cout( cout[21] ) );
  ALU_1bit alu22( .dataA( dataA[22] ), .dataB( dataB[22] ), .Signal( Signal ), .cin( cout[21] ), .dataOut( temp[22] ), .cout( cout[22] ) );
  ALU_1bit alu23( .dataA( dataA[23] ), .dataB( dataB[23] ), .Signal( Signal ), .cin( cout[22] ), .dataOut( temp[23] ), .cout( cout[23] ) );
  ALU_1bit alu24( .dataA( dataA[24] ), .dataB( dataB[24] ), .Signal( Signal ), .cin( cout[23] ), .dataOut( temp[24] ), .cout( cout[24] ) );
  ALU_1bit alu25( .dataA( dataA[25] ), .dataB( dataB[25] ), .Signal( Signal ), .cin( cout[24] ), .dataOut( temp[25] ), .cout( cout[25] ) );
  ALU_1bit alu26( .dataA( dataA[26] ), .dataB( dataB[26] ), .Signal( Signal ), .cin( cout[25] ), .dataOut( temp[26] ), .cout( cout[26] ) );
  ALU_1bit alu27( .dataA( dataA[27] ), .dataB( dataB[27] ), .Signal( Signal ), .cin( cout[26] ), .dataOut( temp[27] ), .cout( cout[27] ) );
  ALU_1bit alu28( .dataA( dataA[28] ), .dataB( dataB[28] ), .Signal( Signal ), .cin( cout[27] ), .dataOut( temp[28] ), .cout( cout[28] ) );
  ALU_1bit alu29( .dataA( dataA[29] ), .dataB( dataB[29] ), .Signal( Signal ), .cin( cout[28] ), .dataOut( temp[29] ), .cout( cout[29] ) );
  ALU_1bit alu30( .dataA( dataA[30] ), .dataB( dataB[30] ), .Signal( Signal ), .cin( cout[29] ), .dataOut( temp[30] ), .cout( cout[30] ) );
  ALU_1bit alu31( .dataA( dataA[31] ), .dataB( dataB[31] ), .Signal( Signal ), .cin( cout[30] ), .dataOut( temp[31] ), .cout( cout[31] ) );

  // if reset = 1, reset the out
  assign dataOut = reset ? 32'd0 : ( Signal == SLT ) ? ( ( temp[31] == 1'b1 ) ? 32'd1 : 32'd0 ) : temp; 

endmodule