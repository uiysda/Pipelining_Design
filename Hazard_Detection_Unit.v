`timescale 1ns/1ns

module Hazard_Detection_Unit( MemRead_EX, Rs_ID, Rt_ID, Rt_EX, Stall );

    input       MemRead_EX;
    input [4:0] Rs_ID, Rt_ID, Rt_EX;

    output      Stall ;

    assign DataOut = ( MemRead_EX && ( ( Rs_ID == Rt_EX ) || ( Rt_ID == Rt_EX ) ) ) ? 1'b1 : 1'b0;

endmodule