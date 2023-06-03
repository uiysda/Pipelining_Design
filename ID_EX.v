`timescale 1ns/1ns

module ID_EX( Clk, Rst, Rs_ID, Rt_ID, Rd_ID, Shamt_ID, Funct_ID, ControlUnitOut_ID, RD1_ID, RD2_ID, Ext_Immed_ID,
              WB_EX, MEM_EX, EX_EX,Rs_EX, Rt_EX, Rd_EX, Shamt_EX, Funct_EX, RD1_EX, RD2_EX, Ext_Immed_EX );

  input             Clk, Rst;
  input      [4:0]  Rs_ID, Rt_ID, Rd_ID;
  input      [5:0]  Shamt_ID, Funct_ID;
  input      [7:0]  ControlUnitOut_ID;
  // ControlUnitOut = {RegDst, ALUOp, ALUSrc, MemRead, MemWrite, RegWrite, MemtoReg}
  input      [31:0] RD1_ID, RD2_ID, Ext_Immed_ID;


  output reg [1:0]  WB_EX; // RegWrite_EX, MemtoReg_EX
  output reg [1:0]  MEM_EX; // MemRead_EX, MemWrite_EX
  output reg [3:0]  EX_EX; // RegDst_EX, ALUSrc_EX
  output reg [4:0]  Rs_EX, Rt_EX, Rd_EX;
  output reg [5:0]  Shamt_EX, Funct_EX;
  output reg [31:0] RD1_EX, RD2_EX, Ext_Immed_EX;
  
  always@( posedge Clk )
  begin

    if( Rst )
    begin

      Rs_EX <= 0;
      Rt_EX <= 0;
      Rd_EX <= 0;
      Shamt_EX <= 0;
      Funct_EX <= 0;
      RD1_EX <= 0;
      RD2_EX <= 0;
      Ext_Immed_EX <= 0;

      WB_EX <= 0;
      MEM_EX <= 0;
      EX_EX <= 0;

		 
    end

    else  
    begin

      Rs_EX <= Rs_ID;
      Rt_EX <= Rt_ID;
      Rd_EX <= Rd_ID;
      Shamt_EX <= Shamt_ID;
      Funct_EX <= Funct_ID;
      RD1_EX <= RD1_ID;
      RD2_EX <= RD2_ID;
      Ext_Immed_EX <= Ext_Immed_ID;

      WB_EX <= ControlUnitOut_ID[1:0];
      MEM_EX <= ControlUnitOut_ID[3:2];
      EX_EX <= ControlUnitOut_ID[7:4];

    end

  end
  
endmodule
