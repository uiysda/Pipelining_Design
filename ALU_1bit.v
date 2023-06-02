`timescale 1ns/1ns

module ALU_1bit( dataA, dataB, Signal, cin, dataOut, cout );

  input dataA, dataB, cin;
  input[5:0] Signal;

  output dataOut, cout;

  wire addSum, subSum, addCarry, subCarry;

  parameter AND = 6'b100100;
  parameter OR  = 6'b100101;
  parameter ADD = 6'b100000;
  parameter SUB = 6'b100010;
  parameter SLT = 6'b101010;

  // do add
  FA fa_add( .A( dataA ), .B( dataB ), .Cin( cin ), .Sum( addSum ), .Cout( addCarry ) );

  // do sub
  FA fa_sub( .A( dataA ), .B( ~dataB ), .Cin( cin ), .Sum( subSum ), .Cout( subCarry ) );

  // set dataOut
  assign dataOut = (Signal == AND) ? (dataA & dataB) :
                   (Signal == OR) ? (dataA | dataB) :
                   (Signal == ADD) ? addSum :
                   (Signal == SUB || Signal == SLT) ? subSum : 0;
  
  // set carry out
  assign cout = (Signal == ADD) ? addCarry :
                (Signal == SUB  || Signal == SLT) ? subCarry : 0;

endmodule

`timescale 1ns/1ns

module ALU_1bit( dataA, dataB, sel, invertB, cin, dataOut, cout ) ;

  input dataA, dataB, cin ;
  input[1:0] sel ;
  input invertB ;

  output dataOut, cout;

  wire and00, or01, add10_sub11, tempB ;

  assign and00 = dataA & dataB ;
  
  assign or01 = dataA | dataB ;
  
  assign tempB = invertB ^ dataB ;
  
  FA fullAdder( .DataA( dataA ), .DataB( tempB ), .Cin( cin ), .Sum( add10_sub11 ), .Cout( cout ) ) ;
  
  MUX_4to1 selectResult( .in1( and00 ), .in2( or01 ), .in3( add10_sub11 ), .in4( add10_sub11 ), .sel( sel ), .dataOut( dataOut ) ) ;
  
endmodule
