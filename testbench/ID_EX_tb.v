`timescale 1ns/1ns

module ID_EX_tb;

  reg Clk;
  reg Rst;
  reg [4:0] Rs_ID, Rt_ID, Rd_ID;
  reg [5:0] Shamt_ID, Funct_ID;
  reg [7:0] ControlUnitOut_ID;
  reg [31:0] RD1_ID, RD2_ID, Ext_Immed_ID;

  wire [1:0] WB_EX, MEM_EX;
  wire [3:0] EX_EX;
  wire [4:0] Rs_EX, Rt_EX, Rd_EX;
  wire [5:0] Shamt_EX, Funct_EX;
  wire [31:0] RD1_EX, RD2_EX;
  wire [31:0] Ext_Immed_EX;
  
  ID_EX dut (
    .Clk(Clk), .Rst(Rst),
    .Rs_ID(Rs_ID), .Rt_ID(Rt_ID), .Rd_ID(Rd_ID),
    .Shamt_ID(Shamt_ID), .Funct_ID(Funct_ID),
    .ControlUnitOut_ID(ControlUnitOut_ID),
    .RD1_ID(RD1_ID), .RD2_ID(RD2_ID),
    .Ext_Immed_ID(Ext_Immed_ID),
    .WB_EX(WB_EX), .MEM_EX(MEM_EX), .EX_EX(EX_EX),
    .Rs_EX(Rs_EX), .Rt_EX(Rt_EX), .Rd_EX(Rd_EX),
    .Shamt_EX(Shamt_EX), .Funct_EX(Funct_EX),
    .RD1_EX(RD1_EX), .RD2_EX(RD2_EX), .Ext_Immed_EX(Ext_Immed_EX)
  );

  initial begin
    // Initialize inputs
    Clk = 0;
    Rst = 0;
    Rs_ID = 0;
    Rt_ID = 0;
    Rd_ID = 0;
    Shamt_ID = 0;
    Funct_ID = 0;
    ControlUnitOut_ID = 0;
    RD1_ID = 0;
    RD2_ID = 0;
    Ext_Immed_ID = 0;

    // Wait for some time for the initial values to stabilize
    #10;

    // Apply reset
    Rst = 1;
    #5;
    Rst = 0;

    // Provide input values
    Rs_ID = 5;
    Rt_ID = 3;
    Rd_ID = 2;
    Shamt_ID = 4;
    Funct_ID = 12;
    ControlUnitOut_ID = 8'h3F;
    RD1_ID = 100;
    RD2_ID = 200;
    Ext_Immed_ID = 150;

    // Wait for a few clock cycles
    #10;

    // Display the output values
    $display("WB_EX = %b", WB_EX);
    $display("MEM_EX = %b", MEM_EX);
    $display("EX_EX = %b", EX_EX);
    $display("Rs_EX = %b", Rs_EX);
    $display("Rt_EX = %b", Rt_EX);
    $display("Rd_EX = %b", Rd_EX);
    $display("Shamt_EX = %b", Shamt_EX);
    $display("Funct_EX = %b", Funct_EX);
    $display("RD1_EX = %b", RD1_EX);
    $display("RD2_EX = %b", RD2_EX);
    $display("Ext_Immed_EX = %b", Ext_Immed_EX);

    // End the simulation
    $finish;
  end

  // Toggle the clock
  always begin
    #5;
    Clk = ~Clk;
  end

endmodule
