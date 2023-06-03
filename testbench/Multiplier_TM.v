`timescale 1ns/1ns

module Multiplier_TM;

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
	initial begin
		clk = 1'b1;
		forever #5 clk = ~clk;
	end

  // Stimulus
  initial begin
    // Initialize inputs
   
		reset = 1'b1;
		#10;
		reset = 1'b0;

    // Wait for some time for initialization
    #330;
    
    // Test case 1: Perform multiplication

    dataA = 10;
    dataB = 20;
    Signal = 6'd25; // MULTU
    #330;
    Signal = 6'b111111; // OUT
    #10;
    #10;
    $display("%d, dataA = %d, dataB = %d, dataOut = %d", $time, dataA, dataB, dataOut);
    
    // Test case 2: Reset and perform multiplication again
    dataA = 5;
    dataB = 15;
    Signal = 6'b011001; // MULTU
    #330;
    Signal = 6'b111111; // OUT
    #10;
    #10;
    $display("%d, dataA = %d, dataB = %d, dataOut = %d", $time, dataA, dataB, dataOut);

    // End simulation
    $stop;
  end

endmodule
