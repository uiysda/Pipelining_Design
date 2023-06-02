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
