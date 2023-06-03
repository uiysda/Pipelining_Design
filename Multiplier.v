`timescale 1ns/1ns

module Multiplier( Clk, DataA, DataB, Signal, DataOut, Reset );

  input Clk ;
  input Reset ;
  input [31:0] DataA ;
  input [31:0] DataB ;
  input [5:0] Signal ;

  output [63:0] DataOut ;

  //   Signal ( 6-bits)?
  //   MULTU  : 25
  parameter MULTU = 6'b011001;
  parameter OUT = 6'b111111;
  // 定義各種訊號

  reg [31:0] MPY ;
  reg [63:0] MCND ;
  reg [63:0] PROD ;
  reg [63:0] temp ;

  always@( posedge Clk or Signal )
  begin
    case ( Signal )

      MULTU:
      begin
      
        MPY <= DataB;
        MCND <= { 32'b0, DataA };
        PROD <= 32'b0;
      
      end
    
      OUT:
      begin
      
        PROD <= PROD;
      
      end
      
    endcase
  
  end
  
  always@( posedge Clk or Reset )
  begin

    if ( Reset )
    begin
      temp <= 32'b0 ;
    end
    /*
    Reset訊號 如果是Reset就做歸0
    */

    else
    begin
      
      case ( Signal )

        MULTU:
        begin

          if( MPY[0] )
          begin

            PROD <= PROD + MCND;

          end
          
          else
          begin

            PROD <= PROD;

          end

          MCND <= MCND << 1;
          MPY <= MPY >> 1;

        end
        
        OUT:
	  // 如果訊號是 OUT 代表已經乘完了 要輸出結果 
        begin

          temp <= PROD ;

        end
        
      endcase
      //temp = PROD ;
    end
    
  end

  assign DataOut = temp ;

endmodule
