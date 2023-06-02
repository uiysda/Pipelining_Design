`timescale 1ns/1ns

module ALU_1bit( dataA, dataB, Signal, cin, dataOut, cout );

  input dataA, dataB, cin;
  input[5:0] Signal;

  output dataOut, cout;

  wire addSum, subSum, addCarry, subCarry;
  //類似c的DEFINE
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
