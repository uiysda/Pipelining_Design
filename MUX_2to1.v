`timescale 1ns/1ns

module MUX_2to1 #( parameter Width = 32 ) ( Sel, DataIn0, DataIn1, DataOut );

	input Sel;
	input [Width-1:0] DataIn0, DataIn1;

	output [Width-1:0] DataOut;

	assign DataOut = ( Sel == 1'b0 ) ? DataIn0 : DataIn1;

endmodule

