`timescale 1ns/1ns

module HiLo( Clk, MultuAns, HiOut, LoOut, Reset );
  // 把答案切成兩分

  input Clk;
  input Reset;
  input [63:0] MultuAns;

  output [31:0] HiOut;
  output [31:0] LoOut;

  reg [63:0] HiLo ;

  always@( posedge Clk or Reset )
  begin

    if ( Reset )
    begin

      HiLo = 64'b0;

    end
  
    else	// 幹乘法的答案過來
    begin

      HiLo = MultuAns;

    end

  end

  assign HiOut = HiLo[63:32] ;
  assign LoOut = HiLo[31:0] ;

endmodule
