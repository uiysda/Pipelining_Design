`timescale 1ns/1ns

module Sign_Extend_tb;

  reg [15:0] Immed_In;
  wire [31:0] Ext_Immed_Out;

  // Instantiate Sign_Extend module
  Sign_Extend sign_extend(
    .Immed_In(Immed_In),
    .Ext_Immed_Out(Ext_Immed_Out)
  );

  initial begin
    // Initialize input
    Immed_In = 16'hFFFF;

    // Perform test case
    #10

    // Initialize input
    Immed_In = 16'h1234;

    // Perform test case
    #10

    // Print output
    $display("Extended Immediate: %h", Ext_Immed_Out);

    // End simulation
    #10 $finish;
  end

endmodule
