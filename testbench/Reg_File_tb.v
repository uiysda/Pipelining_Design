`timescale 1ns/1ns

module Reg_File_tb;

  reg Clk;
  reg RegWrite;
  reg [4:0] RN1, RN2, WN;
  reg [31:0] WD;
  wire [31:0] RD1, RD2;

  // Instantiate Reg_File module
  Reg_File reg_file(
    .Clk(Clk),
    .RegWrite(RegWrite),
    .RN1(RN1),
    .RN2(RN2),
    .WN(WN),
    .WD(WD),
    .RD1(RD1),
    .RD2(RD2)
  );

  // Clock generation
  always begin
    #5 Clk = ~Clk;
  end

  initial begin
    // Initialize inputs
    Clk = 0;
    RegWrite = 0;
    RN1 = 0;
    RN2 = 0;
    WN = 0;
    WD = 0;

    // Perform test cases
    #10 RegWrite = 1;
    WN = 1;
    WD = 32'h12345678;
    #10 RegWrite = 0;
    RN1 = 1;
    RN2 = 0;
    #10

    // Print outputs
    $display("Register 1 Data: %h", RD1);
    $display("Register 2 Data: %h", RD2);

    // End simulation
    #10 $finish;
  end

endmodule
