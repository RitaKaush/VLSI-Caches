module dataCache(input clk, input reset, input [2:0] way, input write, input dataRead, input dataSel, input [255:0] block, input [2:0] index,input [4:0] offset,output [7:0] bytedata, output [255:0] selBlock);
  wire [7:0] wyOt;
  wire [7:0] dcOt,wEn0,wEn1,wEn2,wEn3,wrEn4,wrEn5,wrEn6,wrEn7,muxByte;
  wire [31:0] muxWr,decOut;
  wire [255:0] muxblockOut0,muxblockOut1,muxblockOut2,muxblockOut3,muxblockOut4,muxblockOut5,muxblockOut6,muxblockOut7,
  blockOut00,blockOut01,blockOut02,blockOut03,blockOut04,blockOut05,blockOut06,blockOut07,
  blockOut10,blockOut11,blockOut12,blockOut13,blockOut14,blockOut15,blockOut16,blockOut17,
  blockOut20,blockOut21,blockOut22,blockOut23,blockOut24,blockOut25,blockOut26,blockOut27,
  blockOut30,blockOut31,blockOut32,blockOut33,blockOut34,blockOut35,blockOut36,blockOut37,
  blockOut40,blockOut41,blockOut42,blockOut43,blockOut44,blockOut45,blockOut46,blockOut47,
  blockOut50,blockOut51,blockOut52,blockOut53,blockOut54,blockOut55,blockOut56,blockOut57,
  blockOut60,blockOut61,blockOut62,blockOut63,blockOut64,blockOut65,blockOut66,blockOut67,
  blockOut70,blockOut71,blockOut72,blockOut73,blockOut74,blockOut75,blockOut76,blockOut77;
  
  decoder3to8 indDc(index,dcOt);
  //decoder2to4 wyDc(way,wyOt);
  decoder3to8 wyDC(way,wyOt);
  and nd00(wEn0[0],dcOt[0],wyOt[0]&write);and nd01(wEn0[1],dcOt[1],wyOt[0]&write);and nd02(wEn0[2],dcOt[2],wyOt[0]&write);and nd03(wEn0[3],dcOt[3],wyOt[0]&write);
  and nd04(wEn0[4],dcOt[4],wyOt[0]&write);and nd05(wEn0[5],dcOt[5],wyOt[0]&write);and nd06(wEn0[6],dcOt[6],wyOt[0]&write);and nd07(wEn0[7],dcOt[7],wyOt[0]&write);
  and nd10(wEn1[0],dcOt[0],wyOt[1]&write);and nd11(wEn1[1],dcOt[1],wyOt[1]&write);and nd12(wEn1[2],dcOt[2],wyOt[1]&write);and nd13(wEn1[3],dcOt[3],wyOt[1]&write);
  and nd14(wEn1[4],dcOt[4],wyOt[1]&write);and nd15(wEn1[5],dcOt[5],wyOt[1]&write);and nd16(wEn1[6],dcOt[6],wyOt[1]&write);and nd17(wEn1[7],dcOt[7],wyOt[1]&write);
  and nd20(wEn2[0],dcOt[0],wyOt[2]&write);and nd21(wEn2[1],dcOt[1],wyOt[2]&write);and nd22(wEn2[2],dcOt[2],wyOt[2]&write);and nd23(wEn2[3],dcOt[3],wyOt[2]&write);
  and nd24(wEn2[4],dcOt[4],wyOt[2]&write);and nd25(wEn2[5],dcOt[5],wyOt[2]&write);and nd26(wEn2[6],dcOt[6],wyOt[2]&write);and nd27(wEn2[7],dcOt[7],wyOt[2]&write);
  and nd30(wEn3[0],dcOt[0],wyOt[3]&write);and nd31(wEn3[1],dcOt[1],wyOt[3]&write);and nd32(wEn3[2],dcOt[2],wyOt[3]&write);and nd33(wEn3[3],dcOt[3],wyOt[3]&write);
  and nd34(wEn3[4],dcOt[4],wyOt[3]&write);and nd35(wEn3[5],dcOt[5],wyOt[3]&write);and nd36(wEn3[6],dcOt[6],wyOt[3]&write);and nd37(wEn3[7],dcOt[7],wyOt[3]&write);
  and nd40(wEn4[0],dcOt[0],wyOt[4]&write);and nd41(wEn4[1],dcOt[1],wyOt[4]&write);and nd42(wEn4[2],dcOt[2],wyOt[4]&write);and nd43(wEn4[3],dcOt[3],wyOt[4]&write);
  and nd44(wEn4[4],dcOt[4],wyOt[4]&write);and nd45(wEn4[5],dcOt[5],wyOt[4]&write);and nd46(wEn4[6],dcOt[6],wyOt[4]&write);and nd47(wEn4[7],dcOt[7],wyOt[4]&write);
  and nd50(wEn5[0],dcOt[0],wyOt[5]&write);and nd51(wEn5[1],dcOt[1],wyOt[5]&write);and nd52(wEn5[2],dcOt[2],wyOt[5]&write);and nd53(wEn5[3],dcOt[3],wyOt[5]&write);
  and nd54(wEn5[4],dcOt[4],wyOt[5]&write);and nd55(wEn5[5],dcOt[5],wyOt[5]&write);and nd56(wEn5[6],dcOt[6],wyOt[5]&write);and nd57(wEn5[7],dcOt[7],wyOt[5]&write);
  and nd60(wEn6[0],dcOt[0],wyOt[6]&write);and nd61(wEn6[1],dcOt[1],wyOt[6]&write);and nd62(wEn6[2],dcOt[2],wyOt[6]&write);and nd63(wEn6[3],dcOt[3],wyOt[6]&write);
  and nd64(wEn6[4],dcOt[4],wyOt[6]&write);and nd65(wEn6[5],dcOt[5],wyOt[6]&write);and nd66(wEn6[6],dcOt[6],wyOt[6]&write);and nd67(wEn6[7],dcOt[7],wyOt[6]&write);
  and nd70(wEn7[0],dcOt[0],wyOt[7]&write);and nd71(wEn7[1],dcOt[1],wyOt[7]&write);and nd72(wEn7[2],dcOt[2],wyOt[7]&write);and nd73(wEn7[3],dcOt[3],wyOt[7]&write);
  and nd74(wEn7[4],dcOt[4],wyOt[7]&write);and nd75(wEn7[5],dcOt[5],wyOt[7]&write);and nd76(wEn7[6],dcOt[6],wyOt[7]&write);and nd77(wEn7[7],dcOt[7],wyOt[7]&write);
  
  decoder5to32 offSetDc(offset,decOut);
  mux2to1_32b mx32b0({32{1'b1}},decOut, dataSel, muxWr);
  
  dataArray dtWy0(clk,reset,{32{wEn0[0]}} & muxWr,{32{wEn0[1]}} & muxWr,{32{wEn0[2]}} & muxWr,{32{wEn0[3]}} & muxWr,{32{wEn0[4]}} & muxWr,{32{wEn0[5]}} & muxWr,{32{wEn0[6]}} & muxWr,{32{wEn0[7]}} & muxWr,block,blockOut00,blockOut01,blockOut02,blockOut03,blockOut04,blockOut05,blockOut06,blockOut07);
  dataArray dtWy1(clk,reset,{32{wEn1[0]}} & muxWr,{32{wEn1[1]}} & muxWr,{32{wEn1[2]}} & muxWr,{32{wEn1[3]}} & muxWr,{32{wEn1[4]}} & muxWr,{32{wEn1[5]}} & muxWr,{32{wEn1[6]}} & muxWr,{32{wEn1[7]}} & muxWr,block,blockOut10,blockOut11,blockOut12,blockOut13,blockOut14,blockOut15,blockOut16,blockOut17);
  dataArray dtWy2(clk,reset,{32{wEn2[0]}} & muxWr,{32{wEn2[1]}} & muxWr,{32{wEn2[2]}} & muxWr,{32{wEn2[3]}} & muxWr,{32{wEn2[4]}} & muxWr,{32{wEn2[5]}} & muxWr,{32{wEn2[6]}} & muxWr,{32{wEn2[7]}} & muxWr,block,blockOut20,blockOut21,blockOut22,blockOut23,blockOut24,blockOut25,blockOut26,blockOut27);
  dataArray dtWy3(clk,reset,{32{wEn3[0]}} & muxWr,{32{wEn3[1]}} & muxWr,{32{wEn3[2]}} & muxWr,{32{wEn3[3]}} & muxWr,{32{wEn3[4]}} & muxWr,{32{wEn3[5]}} & muxWr,{32{wEn3[6]}} & muxWr,{32{wEn3[7]}} & muxWr,block,blockOut30,blockOut31,blockOut32,blockOut33,blockOut34,blockOut35,blockOut36,blockOut37);
  dataArray dtWy4(clk,reset,{32{wEn4[0]}} & muxWr,{32{wEn4[1]}} & muxWr,{32{wEn4[2]}} & muxWr,{32{wEn4[3]}} & muxWr,{32{wEn4[4]}} & muxWr,{32{wEn4[5]}} & muxWr,{32{wEn4[6]}} & muxWr,{32{wEn4[7]}} & muxWr,block,blockOut40,blockOut41,blockOut42,blockOut43,blockOut44,blockOut45,blockOut46,blockOut47);
  dataArray dtWy5(clk,reset,{32{wEn5[0]}} & muxWr,{32{wEn5[1]}} & muxWr,{32{wEn5[2]}} & muxWr,{32{wEn5[3]}} & muxWr,{32{wEn5[4]}} & muxWr,{32{wEn5[5]}} & muxWr,{32{wEn5[6]}} & muxWr,{32{wEn5[7]}} & muxWr,block,blockOut50,blockOut51,blockOut52,blockOut53,blockOut54,blockOut55,blockOut56,blockOut57);
  dataArray dtWy6(clk,reset,{32{wEn6[0]}} & muxWr,{32{wEn6[1]}} & muxWr,{32{wEn6[2]}} & muxWr,{32{wEn6[3]}} & muxWr,{32{wEn6[4]}} & muxWr,{32{wEn6[5]}} & muxWr,{32{wEn6[6]}} & muxWr,{32{wEn6[7]}} & muxWr,block,blockOut60,blockOut61,blockOut62,blockOut63,blockOut64,blockOut65,blockOut66,blockOut67);
  dataArray dtWy7(clk,reset,{32{wEn7[0]}} & muxWr,{32{wEn7[1]}} & muxWr,{32{wEn7[2]}} & muxWr,{32{wEn7[3]}} & muxWr,{32{wEn7[4]}} & muxWr,{32{wEn7[5]}} & muxWr,{32{wEn7[6]}} & muxWr,{32{wEn7[7]}} & muxWr,block,blockOut70,blockOut71,blockOut72,blockOut73,blockOut74,blockOut75,blockOut76,blockOut77);
  
  mux8to1_256b mx256b0(blockOut00,blockOut01,blockOut02,blockOut03,blockOut04,blockOut05,blockOut06,blockOut07,index,muxblockOut0);
  mux8to1_256b mx256b1(blockOut10,blockOut11,blockOut12,blockOut13,blockOut14,blockOut15,blockOut16,blockOut17,index,muxblockOut1);
  mux8to1_256b mx256b2(blockOut20,blockOut21,blockOut22,blockOut23,blockOut24,blockOut25,blockOut26,blockOut27,index,muxblockOut2);
  mux8to1_256b mx256b3(blockOut30,blockOut31,blockOut32,blockOut33,blockOut34,blockOut35,blockOut36,blockOut37,index,muxblockOut3);
  mux8to1_256b mx256b4(blockOut40,blockOut41,blockOut42,blockOut43,blockOut44,blockOut45,blockOut46,blockOut47,index,muxblockOut0);
  mux8to1_256b mx256b5(blockOut50,blockOut51,blockOut52,blockOut53,blockOut54,blockOut55,blockOut56,blockOut57,index,muxblockOut1);
  mux8to1_256b mx256b6(blockOut60,blockOut61,blockOut62,blockOut63,blockOut64,blockOut65,blockOut66,blockOut67,index,muxblockOut2);
  mux8to1_256b mx256b7(blockOut70,blockOut71,blockOut72,blockOut73,blockOut74,blockOut75,blockOut76,blockOut77,index,muxblockOut3);
  
  mux8blkto1_256b mx8blkSelto1b256(muxblockOut0,muxblockOut1,muxblockOut2,muxblockOut3,muxblockOut4,muxblockOut5,muxblockOut6,muxblockOut7,way,selBlock);
  
  mux32to1_8b mx32b00(selBlock[7:0],selBlock[15:8],selBlock[23:16],selBlock[31:24],selBlock[39:32],selBlock[47:40],selBlock[55:48],selBlock[63:56],selBlock[71:64],selBlock[79:72],selBlock[87:80],selBlock[95:88],selBlock[103:96],selBlock[111:104],selBlock[119:112],selBlock[127:120],selBlock[135:128],selBlock[143:136],selBlock[151:144],selBlock[159:152],selBlock[167:160],selBlock[175:168],selBlock[183:176],selBlock[191:184],selBlock[199:192],selBlock[207:200],selBlock[215:208],selBlock[223:216],selBlock[231:224],selBlock[239:232],selBlock[247:240],selBlock[255:248],offset,muxByte);
  
  mux2to1_8b mx8b(8'd0,muxByte,dataRead,bytedata);
endmodule