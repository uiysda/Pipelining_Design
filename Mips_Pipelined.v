//	Title: MIPS Single-Cycle Processor
//	Editor: Selene (Computer System and Architecture Lab, ICE, CYCU)


module Mips_Pipelined( clk, rst );
	input clk, rst;
	
	// instruction bus
		wire[31:0] instr, instr_out;
	
	// break out important fields from instruction
		wire [5:0]  opcode, funct, funct_out;
        wire [4:0]  rs, rs_out, rt, rt_out, rd, rd_out, shamt, shamt_out;
        wire [15:0] immed;
        wire [31:0] extend_immed, extend_immed_un, immed_result, extend_out, b_offset;
        wire [25:0] jumpoffset;
		wire [63:0] MulAns;
	
	// datapath signals	
        wire [4:0]  rfile_wn, wn_1, wn_2;
        wire [31:0] rfile_rd1, rd1_out, rfile_rd2, rd2_out, rd2ToWD, rfile_wd, alu_a, alu_b, alu_src0, alu_ans, alu_mux_result,
					aluToADDR, ADDR_out, b_tgt, b_tgt_out, pc_next, HiOut, LoOut, 
                	pc, pc_incr, pc_add, dmem_rdata, dmem_rdata_out, jump_addr, branch_addr;

	// control signals
        wire Branch, PCSrc, Zero, Jump, Multu, ExtendSel;
		wire [7:0] ControlUnitOut, EX_MEM_WB;
		wire [1:0] ALU_Out_Sel;
        wire [2:0] Operation;
	
		wire [1:0] WB_reg, WB_reg_1, WB_reg_2, WB_reg_3;
		wire [1:0] MEM_reg, MEM_reg_1, MEM_reg_2;
		wire [3:0] EX_reg, EX_reg_1;
	
        assign opcode = instr_out[31:26];
        assign rs = instr_out[25:21];
        assign rt = instr_out[20:16];
        assign rd = instr_out[15:11];
        assign shamt = instr_out[10:6];
        assign funct = instr_out[5:0];
        assign immed = instr_out[15:0];
        assign jumpoffset = instr_out[25:0];
	
	// branch offset shifter
    	assign b_offset = extend_immed << 2;
	
	// jump offset shifter & concatenation
		assign jump_addr = { pc_incr[31:28], jumpoffset <<2 };
	
		assign WB_reg = { EX_MEM_WB[0], EX_MEM_WB[1] };   
		assign MEM_reg = { EX_MEM_WB[2], EX_MEM_WB[3] };  
		assign EX_reg = { EX_MEM_WB[4], EX_MEM_WB[7], EX_MEM_WB[6:5] };   // [1:0]是ALUOP

	// hazard signals
		wire stall;

	// forwarding signals
		wire forwardingA, forwardingB;
	  
	// module instantiations
		PC PC( .Clk(clk), .Rst(rst), .Stall(stall), .D_In(pc_next), .D_Out(pc) );  
	
		and BR_AND(PCSrc, Branch, Zero);
	
		Beq_Unit Beq_Unit( .Opcode(opcode), .DataA(rfile_rd1), .DataB(rfile_rd2), .DataOut(Zero) );

		MUX_2to1 #(5) RegDstMUX( .Sel(EX_reg_1[2]), .DataIn0(rt_out), .DataIn1(rd_out), .DataOut(rfile_wn) );
	
		MUX_2to1 #(32) PCSrcMUX( .Sel(PCSrc), .DataIn0(pc_incr), .DataIn1(b_tgt), .DataOut(branch_addr) );	
	
		MUX_2to1 #(32) JMUX( .Sel(Jump), .DataIn0(branch_addr), .DataIn1(jump_addr), .DataOut(pc_next) );
	
		MUX_2to1 #(32) ALUSrcMUX( .Sel(EX_reg_1[3]), .DataIn0(alu_src0), .DataIn1(extend_out), .DataOut(alu_b) );
	
		MUX_2to1 #(32) WriteToRegMUX( .Sel(WB_reg_3[1]), .DataIn0(ADDR_out), .DataIn1(dmem_rdata_out), .DataOut(rfile_wd) );
	
		MUX_2to1 #(32) HazardMUX( .Sel(stall), .DataIn0(ControlUnitOut), .DataIn1(1'b0), .DataOut(EX_MEM_WB) );

		MUX_4to1 #(32) OUTMUX( .Sel(ALU_Out_Sel), .DataIn0(alu_ans), .DataIn1(HiOut), .DataIn2(LoOut), .DataIn3(32'b0), .DataOut(alu_mux_result) );
	
		MUX_4to1 #(32) ForwardingAMUX( .Sel(forwardingA), .DataIn0(rd1_out), .DataIn1(rfile_wd), .DataIn2(aluToADDR), .DataIn3(32'b0), .DataOut(alu_a) );

		MUX_4to1 #(32) ForwardingBMUX( .Sel(forwardingB), .DataIn0(rd2_out), .DataIn1(rfile_wd), .DataIn2(aluToADDR), .DataIn3(32'b0), .DataOut(alu_src0) );

		MUX_2to1 #(32) ExtendMUX( .Sel(ExtendSel), .DataIn0(extend_immed), .DataIn1(extend_immed_un), .DataOut(immed_result) );
	
		Add PCADD( .DataA(pc), .DataB(32'd4), .DataOut(pc_incr) );
	
		Add BRADD( .DataA(pc_add), .DataB(b_offset), .DataOut(b_tgt) );
	
		Memory InstrMem( .Clk(clk), .MemRead(1'b1), .MemWrite(1'b0), .Wd(32'd0), .Addr(pc), .Rd(instr) );
	
		Memory DatMem( .Clk(clk), .MemRead(MEM_reg_2[0]), .MemWrite(MEM_reg_2[1]), .Wd(rd2ToWD), .Addr(aluToADDR), .Rd(dmem_rdata) );	 
	
		Hazard_Detection_Unit( .Clk(clk), .MemRead_EX(MEM_reg_1[0]), .Rs_ID(rs), .Rt_ID(rt), .Rt_EX(rt_out), .Stall(stall) );

		Forwarding_Unit Forwarding_Unit( .Clk(clk), .RegWrite_EX_MEM(WB_reg_2[0]), .RegWrite_MEM_WB(WB_reg_3[0]), .Rs_ID_EX(rs_out), .Rt_ID_EX(rt_out), .Rd_EX_MEM(wn_1), .Rd_MEM_WB(wn_2), .Forward_A(forwardingA), .Forward_B(forwardingB)  );

		Control_Unit Control_Unit(.Opcode(opcode), .Branch(Branch), .Jump(Jump), .ExtendSel(ExtendSel), .ControlUnitOut(ControlUnitOut) );
	   
		ALU_Control_Unit ALU_Control_Unit( .Clk(clk), .ALUOp(EX_reg_1[1:0]), .Funct(funct_out), .ALUOperation(Operation), .MULTUOperation(Multu), .Sel(ALU_Out_Sel) );
	
		Reg_File RegFile( .Clk(clk), .RegWrite(WB_reg_3[0]), .RN1(rs), .RN2(rt), .WN(wn_2), .WD(rfile_wd), .RD1(rfile_rd1), .RD2(rfile_rd2) );
	
		Sign_Extend SignExt( .Immed_In(immed), .Ext_Immed_Out(extend_immed) );
	
		UnSign_Extend UnsignExt( .Immed_In(immed), .Ext_Immed_Out(extend_immed_un) );

    	ALU ALU( .ALUOperation(Operation), .Shamt(shamt_out), .DataA(alu_a), .DataB(alu_b), .DataOut(alu_ans) );

		Multiplier Multiplier( .Clk(clk), .DataA(rd1_out), .DataB(rd2_out), .Signal(Multu), .DataOut(MulAns), .Reset(reset) );
	
		HiLo HiLo( .Clk(clk), .MultuAns(MulAns), .HiOut(HiOut), .LoOut(LoOut), .Reset(reset) );

		IF_ID IF_ID_Reg( .Clk(clk), .Rst(rst), .Stall(stall), .PCplus4_IF(pc_incr), .Instr_IF(instr), .PCplus4_ID(pc_add), .Instr_ID(instr_out) );
	
		ID_EX ID_EX_Reg( .Clk(clk), .Rst(rst),
						.WB_ID(WB_reg), .MEM_ID(MEM_reg), .EX_ID(EX_reg), .Rs_ID(rs), .Rt_ID(rt), .Rd_ID(rd), .Shamt_ID(shamt), .Funct_ID(funct), 
						.RD1_ID(rfile_rd1), .RD2_ID(rfile_rd2), .Ext_Immed_ID(immed_result), 
						.WB_EX(WB_reg_1), .MEM_EX(MEM_reg_1), .EX_EX(EX_reg_1), .Rs_EX(rs_out), .Rt_EX(rt_out), .Rd_EX(rd_out), .Shamt_EX(shamt_out), .Funct_EX(funct_out),  
						.RD1_EX(rd1_out), .RD2_EX(rd2_out), .Ext_Immed_EX(extend_out) );

		EX_MEM EX_MEM_Reg( .Clk(clk), .Rst(rst), .WB_EX(WB_reg_1), .MEM_EX(MEM_reg_1), .WN_EX(rfile_wn), .RD2_EX(rd2_out), .DataOut_EX(alu_mux_result),
						   .WB_MEM(WB_reg_2), .MEM_MEM(MEM_reg_2), .WN_MEM(wn_1), .RD2_MEM(rd2ToWD), .DataOut_MEM(aluToADDR) );

		MEM_WB MEM_WB_Reg( .Clk(clk), .Rst(rst), .WB_MEM(WB_reg_2), .RD_MEM(dmem_rdata), .ADDR_MEM(aluToADDR), .WN_MEM(wn_1),
		 				   .WB_WB(WB_reg_3), .RD_WB(dmem_rdata_out), .ADDR_WB(ADDR_out), .WN_WB(wn_2) );
	
endmodule
