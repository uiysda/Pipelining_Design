/*
	Title: Sign Extend
	Author: Selene (Computer System and Architecture Lab, ICE, CYCU)
	
	Input Port
		1. immed_in: 讀入欲做sign extend資料
	Output Port
		1. ext_immed_out: 輸出已完成sign extend資料
*/

`timescale 1ns/1ns

module Sign_Extend( Immed_In, Ext_Immed_Out );

  input  [15:0] Immed_In;

  output [31:0] Ext_Immed_Out;

  assign Ext_Immed_Out = { { 16{ Immed_In[15] } }, Immed_In };

endmodule
