module mux8to1_256b(input [255:0] in1,input [255:0] in2, input [255:0] in3, input [255:0] in4, input [255:0] in5,input [255:0] in6, input [255:0] in7, input [255:0] in8,input[2:0] sel,output reg[255:0] muxOut);
  always@(in1,in2,in3,in4,in5,in6,in7,in8,sel)
  case(sel)
    3'b000: muxOut=in1;
    3'b001: muxOut=in2;
    3'b010: muxOut=in3;
    3'b011: muxOut=in4;
	 3'b100: muxOut=in5;
    3'b101: muxOut=in6;
    3'b110: muxOut=in7;
    3'b111: muxOut=in8;
  endcase
endmodule