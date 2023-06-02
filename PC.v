/*
	Title: 32-Bit Register with Synchronous Reset
	Editor: Selene (Computer System and Architecture Lab, ICE, CYCU)
	
	Input Port
		1. clk
		2. rst: 重置訊號
		3. en_reg: 控制暫存器是否可寫入
		4. d_in: 欲寫入的暫存器資料
	Output Port
		1. d_out: 所讀取的暫存器資料
*/

`timescale 1ns/1ns

module PC ( Clk, Rst, En_Reg, D_In, D_Out );

  input             Clk, Rst, En_Reg;
  input      [31:0] D_In;
  output reg [31:0] D_Out;

   
  always @( posedge Clk )
  begin

    if ( Rst )
    begin

      D_Out <= 32'b0;

    end

    else 
    begin
	    
      if ( En_Reg )
      begin

        D_Out <= D_In;

      end

      else
      begin

        D_Out <= D_Out;

      end

    end

  end

endmodule
	
