`timescale 1ns/1ns

module FA( A, B, Cin, Sum, Cout );
// 為了實現ALU的加減法
	input A, B, Cin;

	output Sum, Cout;
    
	assign Sum = A ^ B ^ Cin;
	assign Cout = ( ( A | B ) & Cin ) | ( A & B );

endmodule