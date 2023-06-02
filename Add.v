`timescale 1ns/1ns

module Add( DataA, DataB, DataOut );

    input[31:0]  DataA, DataB;
    output[31:0] DataOut;
              
    assign DataOut = DataA + DataB;

endmodule