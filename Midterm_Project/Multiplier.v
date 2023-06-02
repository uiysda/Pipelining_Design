`timescale 1ns/1ns

module Multiplier( clk, dataA, dataB, Signal, dataOut, reset );

  input clk ;
  input reset ;
  input [31:0] dataA ;
  input [31:0] dataB ;
  input [5:0] Signal ;

  output reg [63:0] dataOut ;

  //   Signal ( 6-bits)?
  //   MULTU  : 25
  parameter MULTU = 6'b011001;
  parameter OUT = 6'b111111;
  // 定義各種訊號

  reg [31:0] MPY ;
  reg [63:0] MCND ;
  reg [63:0] PROD ;
  reg [63:0] temp ;

  always@( posedge clk or Signal )
  begin
    case ( Signal )

      MULTU:
      begin
      
        MPY <= dataB;
        MCND <= { 32'b0, dataA };
        PROD <= 32'b0;
      
      end
    
      OUT:
      begin
      
        PROD <= PROD;
      
      end
      
    endcase
  
  end
  
  always@( posedge clk or reset )
  begin

    if ( reset )
    begin
      temp <= 64'b0 ;
    end
    /*
    reset訊號 如果是reset就做歸0
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

          dataOut <= PROD ;

        end
        
      endcase
      //temp = PROD ;
    end
    
  end

endmodule