`timescale 1ns/1ns

module ALUControl( clk, Signal, SignaltoALU, SignaltoSHT, SignaltoMULTU, SignaltoMUX );
  // 負責丟訊號給所有元件
  input clk ;
  input [5:0] Signal ;

  output [5:0] SignaltoALU ;
  output [5:0] SignaltoSHT ;
  output [5:0] SignaltoMULTU ;
  output [1:0] SignaltoMUX ;

  reg [5:0] temp ;
  reg [6:0] counter ;

  //   Signal ( 6-bits)
  //   AND  : 36
  //   OR   : 37
  //   ADD  : 32
  //   SUB  : 34
  //   SLT  : 42
  //   SRL  : 2
  //   MULTU : 25
  //   MFHI : 16
  //   MFLO : 18

  parameter AND = 6'b100100;
  parameter OR  = 6'b100101;
  parameter ADD = 6'b100000;
  parameter SUB = 6'b100010;
  parameter SLT = 6'b101010;

  parameter SRL = 6'b000010;

  parameter MULTU = 6'b011001;
  parameter MFHI = 6'b010000;
  parameter MFLO = 6'b010010;
  /*
  ??????
  */

  always@( Signal )
  begin
  
    if ( Signal == MULTU )
	//如果訊號是乘法
    begin
      
      counter <= 0 ;
      // 計數器設為0
    end
  /*
  ???????MULTU ??counter?0
  */
  end

  always@( posedge clk )
  // 遇到上升的CLK，才會執行
  begin
  
    temp = Signal ;
    if ( Signal == MULTU )
    begin
    
      counter = counter + 1 ;
    
      if ( counter == 33 )
      begin
      
        temp = 6'b111111 ; // Open HiLo reg for Div
        counter = 0 ;
      
      end
    
    end
  /*
  ?32?clk????HiLo???????????
  */
  end

  assign SignaltoALU = temp ;
  assign SignaltoSHT = temp ;
  assign SignaltoMULTU = temp ;
  assign SignaltoMUX = ( Signal == MFHI ) ? 2'b01 :
                       ( Signal == MFLO ) ? 2'b10 :
                       ( Signal == SRL ) ? 2'b11 :
                       2'b00 ;

endmodule