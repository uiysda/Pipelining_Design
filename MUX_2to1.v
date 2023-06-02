`timescale 1ns/1ns

module MUX_2to1( Sel, DataIn0, DataIn1, DataOut );

	input Sel, DataIn0, DataIn1;

	output DataOut;

	assign DataOut = ( Sel == 1'd0 ) ? DataIn0 : DataIn1;

endmodule