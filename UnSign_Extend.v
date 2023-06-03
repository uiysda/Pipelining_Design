module UnSign_Extend( Immed_In, Ext_Immed_Out );

  input  [15:0] Immed_In;

  output [31:0] Ext_Immed_Out;

  assign Ext_Immed_Out = { 16'b0, Immed_In };

endmodule
