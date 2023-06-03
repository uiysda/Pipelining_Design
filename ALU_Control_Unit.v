/*
	Title:	ALU Control Unit
	Author: Garfield (Computer System and Architecture Lab, ICE, CYCU)
	Input Port
		1. ALUOp: 控制alu是要用+還是-或是其他指令
		2. Funct: 如果是其他指令則用這邊6碼判斷
	Output Port
		1. ALUOperation: 最後解碼完成之指令
*/

module ALU_Control_Unit( Clk, ALUOp, Funct, ALUOperation, MULTUOperation, Sel );
  
  input       Clk;
  input [1:0] ALUOp;
  input [5:0] Funct;
    
  output reg [1:0] Sel;
  output reg [2:0] ALUOperation;
  output reg [5:0] MULTUOperation;
  
  reg [6:0] counter ;

  // symbolic constants for instruction function code
  parameter SRL   = 6'b000010; // 2
  parameter MFHI  = 6'b010000; // 16
  parameter MFLO  = 6'b010010; // 18
  parameter MULTU = 6'b011001; // 25
  parameter ADD   = 6'b100000; // 32
  parameter SUB   = 6'b100010; // 34
  parameter AND   = 6'b100100; // 36
  parameter OR    = 6'b100101; // 37
  parameter SLT   = 6'b101010; // 42
  parameter HILO  = 6'b111111; // 63

  // symbolic constants for ALU Operations
  parameter ALU_srl   = 3'b011; 
  parameter ALU_multu = 3'b100; 
  parameter ALU_add   = 3'b010;
  parameter ALU_sub   = 3'b110;
  parameter ALU_and   = 3'b000;
  parameter ALU_or    = 3'b001;
  parameter ALU_slt   = 3'b111;

  always@( Funct )
  begin
  
    if ( Funct == MULTU )
	//如果訊號是乘法
    begin
      
      counter <= 0 ;
      // 計數器設為0
    end

  end

  always@( posedge Clk )
  // 遇到上升的CLK，才會執行
  begin
  
    if ( Funct == MULTU )
    begin

      MULTUOperation = MULTU;
      counter = counter + 1 ;
    
      if ( counter == 33 )
      begin
      
        MULTUOperation = HILO ; // Open HiLo reg for Div
        counter = 0 ;
      
      end
    
    end

  end
	
  always @( ALUOp or Funct )
  begin

    Sel = 2'b00;
    case ( ALUOp ) 

      2'b00 : ALUOperation = ALU_add;
      2'b01 : ALUOperation = ALU_sub;
      2'b10 : 
      case ( Funct ) 

        ADD  : ALUOperation = ALU_add;
        SUB  : ALUOperation = ALU_sub;
        AND  : ALUOperation = ALU_and;
        OR   : ALUOperation = ALU_or;
        SLT  : ALUOperation = ALU_slt;
        SRL  : ALUOperation = ALU_srl;
        MFHI : Sel = 2'b01;
        MFLO : Sel = 2'b10;
        default ALUOperation = 3'bxxx;

      endcase

      default ALUOperation = 3'bxxx;

    endcase

  end

endmodule
