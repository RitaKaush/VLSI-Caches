module dataBlock(input clk, input reset, input [31:0] write, input [255:0] block,output [255:0] blockData);
  dataByte data00(clk,reset,write[0],block[7:0],blockData[7:0]);
  dataByte data01(clk,reset,write[1],block[15:8],blockData[15:8]);
  dataByte data02(clk,reset,write[2],block[23:16],blockData[23:16]);
  dataByte data03(clk,reset,write[3],block[31:24],blockData[31:24]);
  dataByte data04(clk,reset,write[4],block[39:32],blockData[39:32]);
  dataByte data05(clk,reset,write[5],block[47:40],blockData[47:40]);
  dataByte data06(clk,reset,write[6],block[55:48],blockData[55:48]);
  dataByte data07(clk,reset,write[7],block[63:56],blockData[63:56]);
  dataByte data08(clk,reset,write[8],block[71:64],blockData[71:64]);
  dataByte data09(clk,reset,write[9],block[79:72],blockData[79:72]);
  dataByte data10(clk,reset,write[10],block[87:80],blockData[87:80]);
  dataByte data11(clk,reset,write[11],block[95:88],blockData[95:88]);
  dataByte data12(clk,reset,write[12],block[103:96],blockData[103:96]);
  dataByte data13(clk,reset,write[13],block[111:104],blockData[111:104]);
  dataByte data14(clk,reset,write[14],block[119:112],blockData[119:112]);
  dataByte data15(clk,reset,write[15],block[127:120],blockData[127:120]);
  dataByte data16(clk,reset,write[16],block[135:128],blockData[135:128]);
  dataByte data17(clk,reset,write[17],block[143:136],blockData[143:136]);
  dataByte data18(clk,reset,write[18],block[151:144],blockData[151:144]);
  dataByte data19(clk,reset,write[19],block[159:152],blockData[159:152]);
  dataByte data20(clk,reset,write[20],block[167:160],blockData[167:160]);
  dataByte data21(clk,reset,write[21],block[175:168],blockData[175:168]);
  dataByte data22(clk,reset,write[22],block[183:176],blockData[183:176]);
  dataByte data23(clk,reset,write[23],block[191:184],blockData[191:184]);
  dataByte data24(clk,reset,write[24],block[199:192],blockData[199:192]);
  dataByte data25(clk,reset,write[25],block[207:200],blockData[207:200]);
  dataByte data26(clk,reset,write[26],block[215:208],blockData[215:208]);
  dataByte data27(clk,reset,write[27],block[223:216],blockData[223:216]);
  dataByte data28(clk,reset,write[28],block[231:224],blockData[231:224]);
  dataByte data29(clk,reset,write[29],block[239:232],blockData[239:232]);
  dataByte data30(clk,reset,write[30],block[247:240],blockData[247:240]);
  dataByte data31(clk,reset,write[31],block[255:248],blockData[255:248]);
endmodule