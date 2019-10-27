`timescale 1ns / 1ps

module dmux16(out1, out2, sel, a);
input sel;
input [15:0] a;
output [15:0] out1, out2;
dmux d0(out1[0], out2[0], sel, a[0]);
dmux d1(out1[1], out2[1], sel, a[1]);
dmux d2(out1[2], out2[2], sel, a[2]);
dmux d3(out1[3], out2[3], sel, a[3]);
dmux d4(out1[4], out2[4], sel, a[4]);
dmux d5(out1[5], out2[5], sel, a[5]);
dmux d6(out1[6], out2[6], sel, a[6]);
dmux d7(out1[7], out2[7], sel, a[7]);
dmux d8(out1[8], out2[8], sel, a[8]);
dmux d9(out1[9], out2[9], sel, a[9]);
dmux d10(out1[10], out2[10], sel, a[10]);
dmux d11(out1[11], out2[11], sel, a[11]);
dmux d12(out1[12], out2[12], sel, a[12]);
dmux d13(out1[13], out2[13], sel, a[13]);
dmux d14(out1[14], out2[14], sel, a[14]);
dmux d15(out1[15], out2[15], sel, a[15]);
endmodule
