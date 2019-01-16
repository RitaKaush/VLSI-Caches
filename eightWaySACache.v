module fourWaySACache(input clk, input reset, input [2:0] way, input replace, input [23:0] tag, input [2:0] index, output iHit, output [2:0] wayOut, output [7:0] validComp);
  wire hit,sel0,sel1,sel2,sel3,cmpOut0,cmpOut1,cmpOut2,cmpOut3,cmpOut4,cmpOut5,cmpOut6,cmpOut7,
  validOut00,validOut01,validOut02,validOut03,validOut04,validOut05,validOut06,validOut07,
  validOut10,validOut11,validOut12,validOut13,validOut14,validOut15,validOut16,validOut17,
  validOut20,validOut21,validOut22,validOut23,validOut24,validOut25,validOut26,validOut27,
  validOut30,validOut31,validOut32,validOut33,validOut34,validOut35,validOut36,validOut37,
  validOut40,validOut41,validOut42,validOut43,validOut44,validOut45,validOut46,validOut47,
  validOut50,validOut51,validOut52,validOut53,validOut54,validOut55,validOut56,validOut57,
  validOut60,validOut61,validOut62,validOut63,validOut64,validOut65,validOut66,validOut67,
  validOut70,validOut71,validOut72,validOut73,validOut74,validOut75,validOut76,validOut77;
  
  wire [7:0] wyOt;
  wire [7:0] dcOt, wrEn0,wrEn1,wrEn2,wrEn3,wrEn4,wrEn5,wrEn6,wrEn7;
  
  wire [23:0] tagComp0,tagComp1,tagComp2,tagComp3,tagComp4,tagComp5,tagComp6,tagComp7,
  tagOut00,tagOut01,tagOut02,tagOut03,tagOut04,tagOut05,tagOut06,tagOut07,
  tagOut10,tagOut11,tagOut12,tagOut13,tagOut14,tagOut15,tagOut16,tagOut17,
  tagOut20,tagOut21,tagOut22,tagOut23,tagOut24,tagOut25,tagOut26,tagOut27,
  tagOut30,tagOut31,tagOut32,tagOut33,tagOut34,tagOut35,tagOut36,tagOut37,
  tagOut40,tagOut41,tagOut42,tagOut43,tagOut44,tagOut45,tagOut46,tagOut47,
  tagOut50,tagOut51,tagOut52,tagOut53,tagOut54,tagOut55,tagOut56,tagOut57,
  tagOut60,tagOut61,tagOut62,tagOut63,tagOut64,tagOut65,tagOut66,tagOut67,
  tagOut70,tagOut71,tagOut72,tagOut73,tagOut74,tagOut75,tagOut76,tagOut77;
  
  decoder3to8 ind(index, dcOt);
 // decoder2to4 wydc(way, wyOt);
 decoder3to8 wydc(index, wyOt);
 
  and an00(wrEn0[0],dcOt[0],wyOt[0]&replace);and an01(wrEn0[1],dcOt[1],wyOt[0]&replace);and an02(wrEn0[2],dcOt[2],wyOt[0]&replace);and an03(wrEn0[3],dcOt[3],wyOt[0]&replace);
  and an04(wrEn0[4],dcOt[4],wyOt[0]&replace);and an05(wrEn0[5],dcOt[5],wyOt[0]&replace);and an06(wrEn0[6],dcOt[6],wyOt[0]&replace);and an07(wrEn0[7],dcOt[7],wyOt[0]&replace);
  and an10(wrEn1[0],dcOt[0],wyOt[1]&replace);and an11(wrEn1[1],dcOt[1],wyOt[1]&replace);and an12(wrEn1[2],dcOt[2],wyOt[1]&replace);and an13(wrEn1[3],dcOt[3],wyOt[1]&replace);
  and an14(wrEn1[4],dcOt[4],wyOt[1]&replace);and an15(wrEn1[5],dcOt[5],wyOt[1]&replace);and an16(wrEn1[6],dcOt[6],wyOt[1]&replace);and an17(wrEn1[7],dcOt[7],wyOt[1]&replace);
  and an20(wrEn2[0],dcOt[0],wyOt[2]&replace);and an21(wrEn2[1],dcOt[1],wyOt[2]&replace);and an22(wrEn2[2],dcOt[2],wyOt[2]&replace);and an23(wrEn2[3],dcOt[3],wyOt[2]&replace);
  and an24(wrEn2[4],dcOt[4],wyOt[2]&replace);and an25(wrEn2[5],dcOt[5],wyOt[2]&replace);and an26(wrEn2[6],dcOt[6],wyOt[2]&replace);and an27(wrEn2[7],dcOt[7],wyOt[2]&replace);
  and an30(wrEn3[0],dcOt[0],wyOt[3]&replace);and an31(wrEn3[1],dcOt[1],wyOt[3]&replace);and an32(wrEn3[2],dcOt[2],wyOt[3]&replace);and an33(wrEn3[3],dcOt[3],wyOt[3]&replace);
  and an34(wrEn3[4],dcOt[4],wyOt[3]&replace);and an35(wrEn3[5],dcOt[5],wyOt[3]&replace);and an36(wrEn3[6],dcOt[6],wyOt[3]&replace);and an37(wrEn3[7],dcOt[7],wyOt[3]&replace);
  and an40(wrEn4[0],dcOt[0],wyOt[4]&replace);and an41(wrEn4[1],dcOt[1],wyOt[4]&replace);and an42(wrEn4[2],dcOt[2],wyOt[4]&replace);and an43(wrEn4[3],dcOt[3],wyOt[4]&replace);
  and an44(wrEn4[4],dcOt[4],wyOt[4]&replace);and an45(wrEn4[5],dcOt[5],wyOt[4]&replace);and an46(wrEn4[6],dcOt[6],wyOt[4]&replace);and an47(wrEn4[7],dcOt[7],wyOt[4]&replace);
  and an50(wrEn5[0],dcOt[0],wyOt[5]&replace);and an51(wrEn5[1],dcOt[1],wyOt[5]&replace);and an52(wrEn5[2],dcOt[2],wyOt[5]&replace);and an53(wrEn5[3],dcOt[3],wyOt[5]&replace);
  and an54(wrEn5[4],dcOt[4],wyOt[5]&replace);and an55(wrEn5[5],dcOt[5],wyOt[5]&replace);and an56(wrEn5[6],dcOt[6],wyOt[5]&replace);and an57(wrEn5[7],dcOt[7],wyOt[5]&replace);
  and an60(wrEn6[0],dcOt[0],wyOt[6]&replace);and an61(wrEn6[1],dcOt[1],wyOt[6]&replace);and an62(wrEn6[2],dcOt[2],wyOt[6]&replace);and an63(wrEn6[3],dcOt[3],wyOt[6]&replace);
  and an64(wrEn6[4],dcOt[4],wyOt[6]&replace);and an65(wrEn6[5],dcOt[5],wyOt[6]&replace);and an66(wrEn6[6],dcOt[6],wyOt[6]&replace);and an67(wrEn6[7],dcOt[7],wyOt[6]&replace);
  and an70(wrEn7[0],dcOt[0],wyOt[7]&replace);and an71(wrEn7[1],dcOt[1],wyOt[7]&replace);and an72(wrEn7[2],dcOt[2],wyOt[7]&replace);and an73(wrEn7[3],dcOt[3],wyOt[7]&replace);
  and an74(wrEn7[4],dcOt[4],wyOt[7]&replace);and an75(wrEn7[5],dcOt[5],wyOt[7]&replace);and an76(wrEn7[6],dcOt[6],wyOt[7]&replace);and an77(wrEn7[7],dcOt[7],wyOt[7]&replace);
  
  vaildArray vdAr0(clk,reset,wrEn0,1'b1,validOut00,validOut01,validOut02,validOut03,validOut04,validOut05,validOut06,validOut07);
  vaildArray vdAr1(clk,reset,wrEn1,1'b1,validOut10,validOut11,validOut12,validOut13,validOut14,validOut15,validOut16,validOut17);
  vaildArray vdAr2(clk,reset,wrEn2,1'b1,validOut20,validOut21,validOut22,validOut23,validOut24,validOut25,validOut26,validOut27);
  vaildArray vdAr3(clk,reset,wrEn3,1'b1,validOut30,validOut31,validOut32,validOut33,validOut34,validOut35,validOut36,validOut37);
  vaildArray vdAr4(clk,reset,wrEn4,1'b1,validOut40,validOut41,validOut42,validOut43,validOut44,validOut45,validOut46,validOut47);
  vaildArray vdAr5(clk,reset,wrEn5,1'b1,validOut50,validOut51,validOut52,validOut53,validOut54,validOut55,validOut56,validOut57);
  vaildArray vdAr6(clk,reset,wrEn6,1'b1,validOut60,validOut61,validOut62,validOut63,validOut64,validOut65,validOut66,validOut67);
  vaildArray vdAr7(clk,reset,wrEn7,1'b1,validOut70,validOut71,validOut72,validOut73,validOut74,validOut75,validOut76,validOut77);
  
  tagArray tgAr0(clk,reset,wrEn0,tag,tagOut00,tagOut01,tagOut02,tagOut03,tagOut04,tagOut05,tagOut06,tagOut07);
  tagArray tgAr1(clk,reset,wrEn1,tag,tagOut10,tagOut11,tagOut12,tagOut13,tagOut14,tagOut15,tagOut16,tagOut17);
  tagArray tgAr2(clk,reset,wrEn2,tag,tagOut20,tagOut21,tagOut22,tagOut23,tagOut24,tagOut25,tagOut26,tagOut27);
  tagArray tgAr3(clk,reset,wrEn3,tag,tagOut30,tagOut31,tagOut32,tagOut33,tagOut34,tagOut35,tagOut36,tagOut37);
  tagArray tgAr4(clk,reset,wrEn4,tag,tagOut40,tagOut41,tagOut42,tagOut43,tagOut44,tagOut45,tagOut46,tagOut47);
  tagArray tgAr5(clk,reset,wrEn5,tag,tagOut50,tagOut51,tagOut52,tagOut53,tagOut54,tagOut55,tagOut56,tagOut57);
  tagArray tgAr6(clk,reset,wrEn6,tag,tagOut60,tagOut61,tagOut62,tagOut63,tagOut64,tagOut65,tagOut66,tagOut67);
  tagArray tgAr7(clk,reset,wrEn7,tag,tagOut70,tagOut71,tagOut72,tagOut73,tagOut74,tagOut75,tagOut76,tagOut77);
 
  mux8to1_24b mx24b0(tagOut00,tagOut01,tagOut02,tagOut03,tagOut04,tagOut05,tagOut06,tagOut07,index,tagComp0);
  mux8to1_24b mx24b1(tagOut10,tagOut11,tagOut12,tagOut13,tagOut14,tagOut15,tagOut16,tagOut17,index,tagComp1);
  mux8to1_24b mx24b2(tagOut20,tagOut21,tagOut22,tagOut23,tagOut24,tagOut25,tagOut26,tagOut27,index,tagComp2);
  mux8to1_24b mx24b3(tagOut30,tagOut31,tagOut32,tagOut33,tagOut34,tagOut35,tagOut36,tagOut37,index,tagComp3);
  mux8to1_24b mx24b4(tagOut40,tagOut41,tagOut42,tagOut43,tagOut44,tagOut45,tagOut46,tagOut47,index,tagComp4);
  mux8to1_24b mx24b5(tagOut50,tagOut51,tagOut52,tagOut53,tagOut54,tagOut55,tagOut56,tagOut57,index,tagComp5);
  mux8to1_24b mx24b6(tagOut60,tagOut61,tagOut62,tagOut63,tagOut64,tagOut65,tagOut66,tagOut67,index,tagComp6);
  mux8to1_24b mx24b7(tagOut70,tagOut71,tagOut72,tagOut73,tagOut74,tagOut75,tagOut76,tagOut77,index,tagComp7);
  
  mux8to1_1b mx1b0(validOut00,validOut01,validOut02,validOut03,validOut04,validOut05,validOut06,validOut07,index,validComp[0]);
  mux8to1_1b mx1b1(validOut10,validOut11,validOut12,validOut13,validOut14,validOut15,validOut16,validOut17,index,validComp[1]);
  mux8to1_1b mx1b2(validOut20,validOut21,validOut22,validOut23,validOut24,validOut25,validOut26,validOut27,index,validComp[2]);
  mux8to1_1b mx1b3(validOut30,validOut31,validOut32,validOut33,validOut34,validOut35,validOut36,validOut37,index,validComp[3]);
  mux8to1_1b mx1b4(validOut40,validOut41,validOut42,validOut43,validOut44,validOut45,validOut46,validOut47,index,validComp[4]);
  mux8to1_1b mx1b5(validOut50,validOut51,validOut52,validOut53,validOut54,validOut55,validOut56,validOut57,index,validComp[5]);
  mux8to1_1b mx1b6(validOut60,validOut61,validOut62,validOut63,validOut64,validOut65,validOut66,validOut67,index,validComp[6]);
  mux8to1_1b mx1b7(validOut70,validOut71,validOut72,validOut73,validOut74,validOut75,validOut76,validOut77,index,validComp[7]);
  
  comparator cmp0(tag,tagComp0,cmpOut0);
  comparator cmp1(tag,tagComp1,cmpOut1);
  comparator cmp2(tag,tagComp2,cmpOut2);
  comparator cmp3(tag,tagComp3,cmpOut3);
  comparator cmp4(tag,tagComp4,cmpOut4);
  comparator cmp5(tag,tagComp5,cmpOut5);
  comparator cmp6(tag,tagComp6,cmpOut6);
  comparator cmp7(tag,tagComp7,cmpOut7);
  
  //encoder4to2 encodeWay({{cmpOut3 & validComp[3]},{cmpOut2 & validComp[2]},{cmpOut1 & validComp[1]},{cmpOut0 & validComp[0]}}, wayOut);
  encoder8to3 encodeWay({{cmpOut7 & validComp[7]},{cmpOut6 & validComp[6]},{cmpOut5 & validComp[5]},{cmpOut4 & validComp[4]},{cmpOut3 & validComp[3]},{cmpOut2 & validComp[2]},{cmpOut1 & validComp[1]},{cmpOut0 & validComp[0]}}, wayOut);
  
  or in0(sel0,cmpOut0 & validComp[0],cmpOut1 & validComp[1]);
  or in1(sel1,cmpOut2 & validComp[2],cmpOut3 & validComp[3]);
  or in2(sel2,cmpOut4 & validComp[4],cmpOut5 & validComp[5]);
  or in3(sel3,cmpOut6 & validComp[6],cmpOut7 & validComp[7]);
    
  or fin(iHit, sel0, sel1, sel2,set3);
  
  missRegister hitReg(reset,tag,index, iHit, hit);
endmodule