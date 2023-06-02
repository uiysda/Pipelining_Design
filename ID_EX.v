`timescale 1ns/1ns

module ID_EX( Clk, Rst, Rs_ID, Rt_ID, Rd_ID, OpCode_ID, ControlUnitOut_ID, RD1_ID, RD2_ID, Ext_Immed_ID,
              RegDst_EX, ALUSrc_EX, MemRead_EX, MemWrite_EX, RegWrite_EX, MemtoReg_EX ,ALUOp_EX,
              Rs_EX, Rt_EX, Rd_EX, OpCode_EX, RD1_EX, RD2_EX, Ext_Immed_EX );

  input             Clk, Rst;
  input      [4:0]  Rs_ID, Rt_ID, Rd_ID;
  input      [5:0]  OpCode_ID;
  input      [7:0]  ControlUnitOut_ID;
  // ControlUnitOut = {RegDst, ALUOp, ALUSrc, MemRead, MemWrite, RegWrite, MemtoReg}
  input      [31:0] RD1_ID, RD2_ID, Ext_Immed_ID;


  output reg        RegDst_EX, ALUSrc_EX, MemRead_EX, MemWrite_EX, RegWrite_EX, MemtoReg_EX;
  output reg [1:0]  ALUOp_EX;
  output reg [4:0]  Rs_EX, Rt_EX, Rd_EX;
  output reg [5:0]  OpCode_EX;
  output reg [31:0] RD1_EX, RD2_EX, Ext_Immed_EX;
  
  always@( posedge Clk )
  begin

    if( Rst )
    begin

      Rs_EX <= 0;
      Rt_EX <= 0;
      Rd_EX <= 0;
      OpCode_EX <= 0;
      RD1_EX <= 0;
      RD2_EX <= 0;
      Ext_Immed_EX <= 0;

      RegDst_EX <= 0;
      ALUOp_EX <= 0;
      ALUSrc_EX <= 0;
      MemRead_EX <= 0;
      MemWrite_EX <= 0; 
      RegWrite_EX <= 0;
      MemtoReg_EX <= 0;
		 
    end

    else  
    begin

      Rs_EX <= Rs_ID;
      Rt_EX <= Rt_ID;
      Rd_EX <= Rd_ID;
      OpCode_EX <= OpCode_ID;
      RD1_EX <= RD1_ID;
      RD2_EX <= RD2_ID;
      Ext_Immed_EX <= Ext_Immed_ID;

      RegDst_EX <= ControlUnitOut_ID[7];
      ALUOp_EX <= ControlUnitOut_ID[6:5];
      ALUSrc_EX <= ControlUnitOut_ID[4];
      MemRead_EX <= ControlUnitOut_ID[3];
      MemWrite_EX <= ControlUnitOut_ID[2]; 
      RegWrite_EX <= ControlUnitOut_ID[1];
      MemtoReg_EX <= ControlUnitOut_ID[0];

    end

  end
  
endmodule