`timescale 1ns/1ns

module Memory_tb;
  
  reg Clk;
  reg MemRead, MemWrite;
  reg [31:0] Addr, Wd;
  wire [31:0] Rd;
  
  Memory dut (
    .Clk(Clk),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .Addr(Addr),
    .Wd(Wd),
    .Rd(Rd)
  );
  
  initial begin
    Clk = 0;
    #5;  // 延遲一些時間讓 Memory 模組初始化
    
    // 寫入測試
    MemRead = 0;
    MemWrite = 1;
    Addr = 88;
    Wd = 32'h12345678;
    #10; // 等待 Memory 模組寫入完成
    
    // 讀取測試
    MemRead = 1;
    MemWrite = 0;
    Addr = 88;
    #5; // 等待 Memory 模組讀取完成
    
    // 其他測試案例...
    
    $finish; // 結束仿真
  end
  
  always #5 Clk = ~Clk; // 以每 5 個時間單位切換一次時鐘信號
  
endmodule
