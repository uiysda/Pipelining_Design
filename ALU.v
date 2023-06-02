`timescale 1ns/1ns

module ALU( Signal, Reset, DataA, DataB, DataOut );
  
  input Reset;
  input [5:0] Signal;  
  input [31:0] DataA, DataB;

  output [31:0] DataOut;
  
  wire cin;
  wire [31:0] cout, temp;

  parameter AND = 6'b100100;
  parameter OR  = 6'b100101;
  parameter ADD = 6'b100000;
  parameter SUB = 6'b100010;
  parameter SLT = 6'b101010;
  parameter SRL = 6'b000010;
  
  // if Signal is sub set carry in = 1
  assign cin = ( Signal == SUB  || Signal == SLT ) ? 1'b1 : 1'b0;  

  // combine 1 bit ALU one by one to get 32 bits ALU
  ALU_1bit alu0( .dataA( DataA[0] ), .dataB( DataB[0] ), .Signal( Signal ), .cin( cin ), .dataOut( temp[0] ), .cout( cout[0] ) );
  ALU_1bit alu1( .dataA( DataA[1] ), .dataB( DataB[1] ), .Signal( Signal ), .cin( cout[0] ), .dataOut( temp[1] ), .cout( cout[1] ) );
  ALU_1bit alu2( .dataA( DataA[2] ), .dataB( DataB[2] ), .Signal( Signal ), .cin( cout[1] ), .dataOut( temp[2] ), .cout( cout[2] ) );
  ALU_1bit alu3( .dataA( DataA[3] ), .dataB( DataB[3] ), .Signal( Signal ), .cin( cout[2] ), .dataOut( temp[3] ), .cout( cout[3] ) );
  ALU_1bit alu4( .dataA( DataA[4] ), .dataB( DataB[4] ), .Signal( Signal ), .cin( cout[3] ), .dataOut( temp[4] ), .cout( cout[4] ) );
  ALU_1bit alu5( .dataA( DataA[5] ), .dataB( DataB[5] ), .Signal( Signal ), .cin( cout[4] ), .dataOut( temp[5] ), .cout( cout[5] ) );
  ALU_1bit alu6( .dataA( DataA[6] ), .dataB( DataB[6] ), .Signal( Signal ), .cin( cout[5] ), .dataOut( temp[6] ), .cout( cout[6] ) );
  ALU_1bit alu7( .dataA( DataA[7] ), .dataB( DataB[7] ), .Signal( Signal ), .cin( cout[6] ), .dataOut( temp[7] ), .cout( cout[7] ) );
  ALU_1bit alu8( .dataA( DataA[8] ), .dataB( DataB[8] ), .Signal( Signal ), .cin( cout[7] ), .dataOut( temp[8] ), .cout( cout[8] ) );
  ALU_1bit alu9( .dataA( DataA[9] ), .dataB( DataB[9] ), .Signal( Signal ), .cin( cout[8] ), .dataOut( temp[9] ), .cout( cout[9] ) );
  ALU_1bit alu10( .dataA( DataA[10] ), .dataB( DataB[10] ), .Signal( Signal ), .cin( cout[9] ), .dataOut( temp[10] ), .cout( cout[10] ) );
  ALU_1bit alu11( .dataA( DataA[11] ), .dataB( DataB[11] ), .Signal( Signal ), .cin( cout[10] ), .dataOut( temp[11] ), .cout( cout[11] ) );
  ALU_1bit alu12( .dataA( DataA[12] ), .dataB( DataB[12] ), .Signal( Signal ), .cin( cout[11] ), .dataOut( temp[12] ), .cout( cout[12] ) );
  ALU_1bit alu13( .dataA( DataA[13] ), .dataB( DataB[13] ), .Signal( Signal ), .cin( cout[12] ), .dataOut( temp[13] ), .cout( cout[13] ) );
  ALU_1bit alu14( .dataA( DataA[14] ), .dataB( DataB[14] ), .Signal( Signal ), .cin( cout[13] ), .dataOut( temp[14] ), .cout( cout[14] ) );
  ALU_1bit alu15( .dataA( DataA[15] ), .dataB( DataB[15] ), .Signal( Signal ), .cin( cout[14] ), .dataOut( temp[15] ), .cout( cout[15] ) );
  ALU_1bit alu16( .dataA( DataA[16] ), .dataB( DataB[16] ), .Signal( Signal ), .cin( cout[15] ), .dataOut( temp[16] ), .cout( cout[16] ) );
  ALU_1bit alu17( .dataA( DataA[17] ), .dataB( DataB[17] ), .Signal( Signal ), .cin( cout[16] ), .dataOut( temp[17] ), .cout( cout[17] ) );
  ALU_1bit alu18( .dataA( DataA[18] ), .dataB( DataB[18] ), .Signal( Signal ), .cin( cout[17] ), .dataOut( temp[18] ), .cout( cout[18] ) );
  ALU_1bit alu19( .dataA( DataA[19] ), .dataB( DataB[19] ), .Signal( Signal ), .cin( cout[18] ), .dataOut( temp[19] ), .cout( cout[19] ) );
  ALU_1bit alu20( .dataA( DataA[20] ), .dataB( DataB[20] ), .Signal( Signal ), .cin( cout[19] ), .dataOut( temp[20] ), .cout( cout[20] ) );
  ALU_1bit alu21( .dataA( DataA[21] ), .dataB( DataB[21] ), .Signal( Signal ), .cin( cout[20] ), .dataOut( temp[21] ), .cout( cout[21] ) );
  ALU_1bit alu22( .dataA( DataA[22] ), .dataB( DataB[22] ), .Signal( Signal ), .cin( cout[21] ), .dataOut( temp[22] ), .cout( cout[22] ) );
  ALU_1bit alu23( .dataA( DataA[23] ), .dataB( DataB[23] ), .Signal( Signal ), .cin( cout[22] ), .dataOut( temp[23] ), .cout( cout[23] ) );
  ALU_1bit alu24( .dataA( DataA[24] ), .dataB( DataB[24] ), .Signal( Signal ), .cin( cout[23] ), .dataOut( temp[24] ), .cout( cout[24] ) );
  ALU_1bit alu25( .dataA( DataA[25] ), .dataB( DataB[25] ), .Signal( Signal ), .cin( cout[24] ), .dataOut( temp[25] ), .cout( cout[25] ) );
  ALU_1bit alu26( .dataA( DataA[26] ), .dataB( DataB[26] ), .Signal( Signal ), .cin( cout[25] ), .dataOut( temp[26] ), .cout( cout[26] ) );
  ALU_1bit alu27( .dataA( DataA[27] ), .dataB( DataB[27] ), .Signal( Signal ), .cin( cout[26] ), .dataOut( temp[27] ), .cout( cout[27] ) );
  ALU_1bit alu28( .dataA( DataA[28] ), .dataB( DataB[28] ), .Signal( Signal ), .cin( cout[27] ), .dataOut( temp[28] ), .cout( cout[28] ) );
  ALU_1bit alu29( .dataA( DataA[29] ), .dataB( DataB[29] ), .Signal( Signal ), .cin( cout[28] ), .dataOut( temp[29] ), .cout( cout[29] ) );
  ALU_1bit alu30( .dataA( DataA[30] ), .dataB( DataB[30] ), .Signal( Signal ), .cin( cout[29] ), .dataOut( temp[30] ), .cout( cout[30] ) );
  ALU_1bit alu31( .dataA( DataA[31] ), .dataB( DataB[31] ), .Signal( Signal ), .cin( cout[30] ), .dataOut( temp[31] ), .cout( cout[31] ) );
  
  // if reset = 1, reset the out
  assign DataOut = reset ? 32'd0 : ( Signal == SLT ) ? ( temp[31] ? 1 : 0 ) : temp; 

endmodule
