`timescale 1ns/1ns

module EX_MEM ( Clk, Rst, WB_EX, MEM_EX, WN_EX, RD2_EX, DataOut_EX,
                WB_MEM, MEM_MEM,  WN_MEM,  RD2_MEM, DataOut_MEM );

  input        Clk, Rst;
  input [1:0]  WB_EX, MEM_EX;
  input [4:0]	 WN_EX;
  input [31:0] RD2_EX, DataOut_EX;
	
  output reg [1:0]  WB_MEM, MEM_MEM;
  output reg [4:0]  WN_MEM;
  output reg [31:0] RD2_MEM, DataOut_MEM;
	
  always @( posedge Clk ) 
  begin
    if ( Rst ) 
    begin

      WB_MEM      <= 2'b0;
      MEM_MEM     <= 2'b0;
      DataOut_MEM <= 32'b0; 
      RD2_MEM     <= 32'b0; 
      WN_MEM      <= 5'b0; 

    end

    else 
    begin

      WB_MEM      <=  WB_EX;
      MEM_MEM     <=  MEM_EX;
      DataOut_MEM <=  DataOut_EX; 
      RD2_MEM     <=  RD2_EX; 
      WN_MEM      <=  WN_EX; 

    end

  end

endmodule
	

