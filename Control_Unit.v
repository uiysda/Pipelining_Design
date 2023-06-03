/*
	Title: MIPS Single-Cycle Control Unit
	Editor: Selene (Computer System and Architecture Lab, ICE, CYCU)
	
	Input Port
		1. opcode: 輸入的指令代號，據此產生對應的控制訊號
	Output Port
		1. RegDst: 控制RFMUX
		2. ALUSrc: 控制ALUMUX
		3. MemtoReg: 控制WRMUX
		4. RegWrite: 控制暫存器是否可寫入
		5. MemRead:  控制記憶體是否可讀出
		6. MemWrite: 控制記憶體是否可寫入
		7. Branch: 與ALU輸出的zero訊號做AND運算控制PCMUX
		8. ALUOp: 輸出至ALU Control
*/

`timescale 1ns/1ns

module Control_Unit( Opcode, Branch, Jump, ControlUnitOut );

  input      [5:0] Opcode;

  output reg       Branch, Jump;
  output reg [7:0] ControlUnitOut;
  // ControlUnitOut = {RegDst, ALUOp, ALUSrc, MemRead, MemWrite, RegWrite, MemtoReg}
  // no ExtendSel

  parameter R_FORMAT = 6'd0;
  parameter MADDU = 6'd28;
  parameter ADDIU = 6'd9;
  parameter LW = 6'd35;
  parameter SW = 6'd43;
  parameter BEQ = 6'd4;
  parameter J = 6'd2;

  always @( Opcode )
  begin

    case ( Opcode )

      R_FORMAT : 
      begin

        Branch = 1'b0;
        Jump = 1'b0;
        ControlUnitOut = 8'b11000010;
        // ExtendSel = 1'b0

      end

      MADDU :
      begin
	
	Branch = 1'b0;
	Jump = 1'b0;
	ControlUnitOut = 8'b11000010;
	// ExtendSel = 1'b0;
	      
      end

      ADDIU :
      begin

        Branch = 1'b0;
        Jump = 1'b0;
        ControlUnitOut = 8'b00010010;
        // ExtendSel = 1'b1

      end

      LW :
      begin

        Branch = 1'b0;
        Jump = 1'b0;
        ControlUnitOut = 8'b00011011;
        // ExtendSel = 1'b1

      end

      SW :
      begin

        Branch = 1'b0;
        Jump = 1'b0;
        ControlUnitOut = 8'bx001010x;
        // ExtendSel = 1'b1

      end

      BEQ :
      begin

        Branch = 1'b1;
        Jump = 1'b0;
        ControlUnitOut = 8'bx010000x;
        // ExtendSel = 1'b1

      end

      J :
      begin

        Branch = 1'b1;
        Jump = 1'b1;
        ControlUnitOut = 8'bx010000x;
        // ExtendSel = 1'b1

      end

      default
      begin

        $display("control_single unimplemented opcode %d", Opcode);
        Branch = 1'bx;
        Jump = 1'bx;
        ControlUnitOut = 8'dx;

      end

    endcase

  end

endmodule
