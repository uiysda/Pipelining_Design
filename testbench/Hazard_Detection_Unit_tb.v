`timescale 1ns/1ns

module Hazard_Detection_Unit_tb;

  reg MemRead_EX;
  reg [4:0] Rs_ID, Rt_ID, Rt_EX;
  wire Stall;

  // Instantiate Hazard_Detection_Unit module
  Hazard_Detection_Unit hazard_unit(
    .MemRead_EX(MemRead_EX),
    .Rs_ID(Rs_ID),
    .Rt_ID(Rt_ID),
    .Rt_EX(Rt_EX),
    .Stall(Stall)
  );

  initial begin
    // Initialize inputs
    MemRead_EX = 0;
    Rs_ID = 0;
    Rt_ID = 0;
    Rt_EX = 0;

    // Perform test cases
    #10 MemRead_EX = 1;
    Rs_ID = 3;
    Rt_ID = 5;
    Rt_EX = 3;

    #10 MemRead_EX = 1;
    Rs_ID = 2;
    Rt_ID = 5;
    Rt_EX = 3;
    #10
    // Add more test cases if needed

    // End simulation
    #10 $finish;
  end

endmodule
