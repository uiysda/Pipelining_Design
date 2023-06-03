`timescale 1ns/1ns

module TB;

  // Inputs
  reg clk;
  reg reset;
  reg [31:0] dataA;
  reg [31:0] dataB;
  reg [5:0] Signal;

  // Outputs
  wire [63:0] dataOut;

  // Instantiate the module under test
  Multiplier dut (
    .clk(clk),
    .reset(reset),
    .dataA(dataA),
    .dataB(dataB),
    .Signal(Signal),
    .dataOut(dataOut)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Stimulus
  initial begin
    // Initialize inputs
    clk = 0;
    reset = 1;
    dataA = 0;
    dataB = 0;
    Signal = 0;

    // Wait for some time for initialization
    #400;
    
    // Test case 1: Perform multiplication
    reset = 0;
    dataA = 10;
    dataB = 20;
    Signal = 6'b011001; // MULTU
    #400;
    Signal = 6'b111111; // OUT
    #400;
    
    // Test case 2: Reset and perform multiplication again
    reset = 1;
    #400;
    reset = 0;
    dataA = 5;
    dataB = 15;
    Signal = 6'b011001; // MULTU
    #400;
    Signal = 6'b111111; // OUT
    #400;

    // End simulation
    $finish;
  end

  // Monitor
  always @(dataOut) begin
    $display("%d, dataA = %d, dataB = %d, dataOut = %d", $time, dataA, dataB, dataOut);
  end

endmodule
