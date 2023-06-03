`timescale 1ns/1ns

module PC_tb;

  // 模擬時鐘和重置訊號
  reg clk;
  reg rst;
  
  // 控制暫存器是否可寫入的信號
  reg en_reg;
  
  // 欲寫入的暫存器資料
  reg [31:0] d_in;
  
  // 被測試模組的輸出暫存器資料
  wire [31:0] d_out;
  
  // 實例化被測試的模組
  PC uut (
    .Clk(clk),
    .Rst(rst),
    .Stall(en_reg),
    .D_In(d_in),
    .D_Out(d_out)
  );
  
  // 模擬時鐘信號
  always #(5) clk = ~clk;
  
  // 初始化
  initial
  begin
    clk = 0;
    rst = 1;
    en_reg = 0;
    d_in = 32'hA5A5A5A5;
    
    #10 rst = 0; // 在一些時鐘周期後釋放重置訊號
    
    // 第一個測試案例：重置後的預設值
    #10;
    $display("Test case 1: Reset state");
    $display("d_out = %h", d_out);
    
    // 第二個測試案例：寫入新值
    en_reg = 1;
    d_in = 32'h12345678;
    #10;
    $display("Test case 2: Write new value");
    $display("d_out = %h", d_out);
    
    // 第三個測試案例：保持當前值
    en_reg = 0;
    d_in = 32'h87654321;
    #10;
    $display("Test case 3: Hold current value");
    $display("d_out = %h", d_out);
    
    #10;
    // 結束模擬
    $finish;
  end
  
endmodule
