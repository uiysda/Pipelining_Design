`timescale 1ns/1ns

module IF_ID( Clk, Rst, Stall, PCplus4_IF, Instr_IF, PCplus4_ID, Instr_ID );

  input             Clk, Rst, Stall;
  input      [31:0] PCplus4_IF; 
  input      [31:0] Instr_IF;
  output reg [31:0] PCplus4_ID; 
  output reg [31:0] Instr_ID;
  
  always@( posedge Clk )
  begin
    
    if( Rst ) 
    begin

      PCplus4_ID <= 0;
      Instr_ID <= 0;

    end

    else if( Stall ) 
    begin

      PCplus4_ID <= PCplus4_ID;
      Instr_ID <= Instr_ID;

    end

    else 
    begin

      PCplus4_ID <= PCplus4_IF;
      Instr_ID <= Instr_IF;

    end

  end
  
endmodule