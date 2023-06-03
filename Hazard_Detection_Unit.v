`timescale 1ns/1ns

module Hazard_Detection_Unit( MemRead_EX, Rs_ID, Rt_ID, Rt_EX, Stall );

  input       MemRead_EX;
  input [4:0] Rs_ID, Rt_ID, Rt_EX;

  output      Stall ;
    
  always@( posedge Clk )
  begin  
      
    if ( MemRead_EX && ( ( Rs_ID == Rt_EX ) || ( Rt_ID == Rt_EX ) ) )
      Stall = 1b'1;
    else
      Stall = 1b'0;
      
  end
    
endmodule
