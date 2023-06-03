`timescale 1ns/1ns

module FA( DataA, DataB, Cin, Sum, Cout );
// 為了實現ALU的加減法
	input DataA, DataB, Cin;

	output Sum, Cout;
    
	assign Sum = DataA ^ DataB ^ Cin;
	assign Cout = ( ( DataA | DataB ) & Cin ) | ( DataA & DataB );

endmodule