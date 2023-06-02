/*
	Title: Register File (32 32-bit registers)
	Editor: Selene (Computer System and Architecture Lab, ICE, CYCU)
	
	Input Port
		1. Clk
		2. RegWrite: ����Ȧs���O�_�i�g�J
		3. RN1: rs��Ū�����Ȧs���s��
		4. RN2: rt��Ū�����Ȧs���s��
		5. WN: ���g�J���Ȧs���s��
		6. WD: �g�J�Ȧs�������
	Output Port
		1. RD1: rs�Ȧs����Ū�������
		2. RD2: rt�Ȧs����Ū�������
*/

`timescale 1ns/1ns

module Reg_File( Clk, RegWrite, RN1, RN2, WN, WD, RD1, RD2 );

  input             Clk,RegWrite;
  input      [4:0]  RN1, RN2, WN;
  input      [31:0] WD;

  output reg [31:0] RD1, RD2;

  reg[31:0] file_array[31:1];

  always @( RN1 or file_array[RN1] ) 
  begin  
 
    if ( RN1 == 0 )
    begin

      RD1 = 32'd0;

    end

    else
    begin

      RD1 = file_array[RN1];

    end

    $display( "%d, reg_file[%d] => %d (Port 1)", $time/10, RN1, RD1);

  end

  always @( RN2 or file_array[RN2] )
  begin

    if ( RN2 == 0 )
    begin

      RD2 = 32'd0;

    end

    else
    begin

      RD2 = file_array[RN2];

    end

    $display( "%d, reg_file[%d] => %d (Port 2)", $time/10, RN2, RD2);

  end

  always @( posedge Clk ) 
  begin

    if ( RegWrite && ( WN != 0 ) )
    begin

      file_array[WN] <= WD;
      $display( "%d, reg_file[%d] <= %d (Write)", $time/10, WN, WD);

    end

  end

endmodule
