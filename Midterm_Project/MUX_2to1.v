`timescale 1ns/1ns

module MUX_2to1( dataA2, dataA1, dataB, dataOut );

	input dataA1, dataA2, dataB;

	output dataOut;

      // if dataB = 1 => need to shift right 
	assign dataOut = ( dataB == 1'b1 ) ? dataA2 : dataA1;

endmodule