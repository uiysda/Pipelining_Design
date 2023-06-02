/*
	Title: Memory
	Author: Selene (Computer System and Architecture Lab, ICE, CYCU)
	
	Input Port
		1. clk
		2. MemRead: 控制記憶體是否可讀取
		3. MemWrite: 控制記憶體是否可寫入
		4. wd: 寫入的記憶體資料
		5. addr: 欲存取的記憶體位置
	Output Port
		1. rd: 讀取的記憶體資料
*/

`timescale 1ns/1ns

module Memory( Clk, MemRead, MemWrite, Addr, Wd, Rd );

  input             Clk, MemRead, MemWrite;
  input      [31:0] Addr, Wd;
  output reg [31:0] Rd;
	
  // Memory size: 1KB.
  reg [7:0] mem_array [0:1023];
	
  // 以下為至指定記憶體位置讀取資料 
  always @( MemRead or mem_array[addr] or mem_array[addr+1] or 
            mem_array[addr+2] or mem_array[addr+3] ) 
  begin

    if ( MemRead == 1'b1 ) 
    begin

      Rd[7:0] = mem_array[Addr];
      Rd[15:8] = mem_array[Addr+1];
      Rd[23:16] = mem_array[Addr+2];
      Rd[31:24] = mem_array[Addr+3];
      $display( "%d, reading data: Mem[%d] => %d", $time/10, Addr, Rd );

    end

    else
    begin

      Rd = 32'hxxxxxxxx;

    end

  end
	
  // 以下將資料寫入指定記憶體位置
  always @( posedge Clk ) 
  begin

    if ( MemWrite == 1'b1 ) 
    begin

      $display( "%d, writing data: Mem[%d] <= %d", $time/10, Addr, Wd );
      mem_array[Addr] <= Wd[7:0];
      mem_array[Addr+1] <= Wd[15:8];
      mem_array[Addr+2] <= Wd[23:16];
      mem_array[Addr+3] <= Wd[31:24];

    end

  end
	
endmodule

