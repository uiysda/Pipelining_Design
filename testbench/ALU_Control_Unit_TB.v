`timescale 1ns/1ps

module ALU_Control_Unit_TB;
  
  reg Clk;
  reg [1:0] ALUOp;
  reg [5:0] Funct;
  
  wire [1:0] Sel;
  wire [2:0] ALUOperation;
  wire [5:0] MULTUOperation;

  ALU_Control_Unit dut (
    .Clk(Clk),
    .ALUOp(ALUOp),
    .Funct(Funct),
    .Sel(Sel),
    .ALUOperation(ALUOperation),
    .MULTUOperation(MULTUOperation)
  );
  
  // Test stimulus
  initial begin
    Clk = 0;
    ALUOp = 2'b00;
    Funct = 6'b000000; // No operation
    #10;
    
    ALUOp = 2'b10;
    Funct = 6'b100000; // ADD instruction
    #10;
    
    ALUOp = 2'b10;
    Funct = 6'b000010; // SRL instruction
    #10;
    
    ALUOp = 2'b10;
    Funct = 6'b010000; // MFHI instruction
    #10;
    
    ALUOp = 2'b10;
    Funct = 6'b010010; // HFLO instruction
    #10;
    
    ALUOp = 2'b10;
    Funct = 6'b011001; // Invalid instruction
    #400;
    
    $stop;
  end
  
  // Toggle clock
  always #5 Clk = ~Clk;
  
  // Display outputs
  always @(posedge Clk) begin
    $display("ALUOp: %b, Funct: %b, Sel: %b, ALUOperation: %b, MULTUOperation: %b",
             ALUOp, Funct, Sel, ALUOperation, MULTUOperation);
  end
  
endmodule