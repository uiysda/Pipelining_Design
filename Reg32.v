/*
	Title: 32-Bit Register with Synchronous Reset
	Editor: Selene (Computer System and Architecture Lab, ICE, CYCU)
	
	Input Port
		1. clk
		2. rst: ���m�T��
		3. en_reg: ����Ȧs���O�_�i�g�J
		4. d_in: ���g�J���Ȧs�����
	Output Port
		1. d_out: ��Ū�����Ȧs�����
*/

`timescale 1ns/1ns

module Reg32 ( Clk, Rst, En_Reg, D_In, D_Out );

  input             Clk, Rst, En_Reg;
  input      [31:0] D_In;
  output reg [31:0] D_Out;

   
  always @( posedge Clk )
  begin

    if ( Rst )
    begin

      D_Out <= 32'b0;

    end

    else if ( en_reg )
    begin

      D_Out <= D_In;

    end

  end

endmodule
	
