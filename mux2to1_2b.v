module mux2to1_2b(input [2:0] in1,input [2:0] in2, input sel,output reg [2:0] muxOut);
  always@(in1,in2,sel)
  case(sel)
    1'b0: muxOut=in1;
    1'b1: muxOut=in2;
  endcase
endmodule