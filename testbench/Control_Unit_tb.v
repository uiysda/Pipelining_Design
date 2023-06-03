`timescale 1ns/1ns

module Control_Unit_tb;

  reg [5:0] Opcode;
  wire Branch, Jump;
  wire [7:0] ControlUnitOut;

  Control_Unit uut (
    .Opcode(Opcode),
    .Branch(Branch),
    .Jump(Jump),
    .ControlUnitOut(ControlUnitOut)
  );

  initial begin
    // Test case 1: R_FORMAT
    Opcode = 6'd0;
    #10;
    $display("Test case 1:");
    $display("Opcode: %d, Branch: %b, Jump: %b, ControlUnitOut: %b", Opcode, Branch, Jump, ControlUnitOut);
    
    // Test case 2: MADDU
    Opcode = 6'd28;
    #10;
    $display("Test case 2:");
    $display("Opcode: %d, Branch: %b, Jump: %b, ControlUnitOut: %b", Opcode, Branch, Jump, ControlUnitOut);

    // Test case 3: ADDIU
    Opcode = 6'd9;
    #10;
    $display("Test case 3:");
    $display("Opcode: %d, Branch: %b, Jump: %b, ControlUnitOut: %b", Opcode, Branch, Jump, ControlUnitOut);

    // Test case 4: LW
    Opcode = 6'd35;
    #10;
    $display("Test case 4:");
    $display("Opcode: %d, Branch: %b, Jump: %b, ControlUnitOut: %b", Opcode, Branch, Jump, ControlUnitOut);

    // Test case 5: SW
    Opcode = 6'd43;
    #10;
    $display("Test case 5:");
    $display("Opcode: %d, Branch: %b, Jump: %b, ControlUnitOut: %b", Opcode, Branch, Jump, ControlUnitOut);

    // Test case 6: BEQ
    Opcode = 6'd4;
    #10;
    $display("Test case 6:");
    $display("Opcode: %d, Branch: %b, Jump: %b, ControlUnitOut: %b", Opcode, Branch, Jump, ControlUnitOut);

    // Test case 7: J
    Opcode = 6'd2;
    #10;
    $display("Test case 7:");
    $display("Opcode: %d, Branch: %b, Jump: %b, ControlUnitOut: %b", Opcode, Branch, Jump, ControlUnitOut);
    
    // Test case 8: Unimplemented opcode
    Opcode = 6'd10;
    #10;
    $display("Test case 8:");
    $display("Opcode: %d, Branch: %b, Jump: %b, ControlUnitOut: %b", Opcode, Branch, Jump, ControlUnitOut);
    
    $finish;
  end

endmodule
