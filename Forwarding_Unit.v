module Forwarding_Unit( Clk, RegWrite_EX_MEM, RegWrite_MEM_WB, Rs_ID_EX, Rt_ID_EX, Rd_EX_MEM, Rd_MEM_WB, Forward_A, Forward_B  );

  input            Clk, RegWrite_EX_MEM, RegWrite_MEM_WB;
  input      [4:0] Rs_ID_EX, Rt_ID_EX, Rd_EX_MEM, Rd_MEM_WB;

  output reg [1:0] Forward_A, Forward_B;

  always @( posedge Clk )
  begin

    if( RegWrite_EX_MEM && ( Rd_EX_MEM != 5'b0 ) && ( Rd_EX_MEM == Rs_ID_EX ) )
      Forward_A = 2'b10;

    else if( RegWrite_MEM_WB && ( Rd_MEM_WB != 5'b0 ) && ( Rd_MEM_WB == Rs_ID_EX ) )    
      Forward_A = 2'b01; 

    else
      Forward_A = 2'b00; 

  end

  always @( posedge Clk )
  begin

    if( RegWrite_EX_MEM && ( Rd_EX_MEM != 5'b0 ) && ( Rd_EX_MEM == Rt_ID_EX ) )
      Forward_B = 2'b10;

    else if( RegWrite_MEM_WB && ( Rd_MEM_WB != 5'b0 ) && ( Rd_MEM_WB == Rt_ID_EX ) )    
      Forward_B = 2'b01;

    else
      Forward_B = 2'b00;
        
  end

endmodule
