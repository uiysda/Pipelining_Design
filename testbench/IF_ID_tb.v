`timescale 1ns/1ns

module IF_ID_tb;

  reg Clk;
  reg Rst;
  reg Stall;
  reg [31:0] PCplus4_IF;
  reg [31:0] Instr_IF;
  wire [31:0] PCplus4_ID;
  wire [31:0] Instr_ID;

  // Instantiate IF_ID module
  IF_ID if_id(
    .Clk(Clk),
    .Rst(Rst),
    .Stall(Stall),
    .PCplus4_IF(PCplus4_IF),
    .Instr_IF(Instr_IF),
    .PCplus4_ID(PCplus4_ID),
    .Instr_ID(Instr_ID)
  );

  // Clock generation
  always begin
    #5 Clk = ~Clk;
  end

  initial begin
    // Initialize inputs
    Clk = 0;
    Rst = 0;
    Stall = 0;
    PCplus4_IF = 32'h1234;
    Instr_IF = 32'h5678;

    // Reset test
    #10 Rst = 1;
    #10 Rst = 0;

    // Normal operation test
    #10 PCplus4_IF = 32'hABCD;
    Instr_IF = 32'hEFFF;
    #10 Stall = 1;
    #10 Stall = 0;

    // Print outputs
    $display("PCplus4_ID: %h", PCplus4_ID);
    $display("Instr_ID: %h", Instr_ID);

    // End simulation
    #10 $finish;
  end

endmodule
