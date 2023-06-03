`timescale 1ns/ 1ns

module TB();

  reg [31:0] In;
  reg [4:0] shamt;
  wire [31:0] Out;

  Shifter sht ( .DataA( In ), .Shamt( shamt ), .DataOut( Out ) );

  initial begin
    In = 32'b01100000000011000110000000001100;
    shamt = 5'b00001 ;

    $display("In = %b", In);
    $display("Out = %b", Out);

    $finish;
  end

endmodule