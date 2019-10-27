`timescale 1ns / 1ps

module mux16(out, sel, a, b);
input [15:0] a, b;
input sel;
output [15:0] out;
mux m0(out[0], sel, a[0], b[0]);
mux m1(out[1], sel, a[1], b[1]);
mux m2(out[2], sel, a[2], b[2]);
mux m3(out[3], sel, a[3], b[3]);
mux m4(out[4], sel, a[4], b[4]);
mux m5(out[5], sel, a[5], b[5]);
mux m6(out[6], sel, a[6], b[6]);
mux m7(out[7], sel, a[7], b[7]);
mux m8(out[8], sel, a[8], b[8]);
mux m9(out[9], sel, a[9], b[9]);
mux m10(out[10], sel, a[10], b[10]);
mux m11(out[11], sel, a[11], b[11]);
mux m12(out[12], sel, a[12], b[12]);
mux m13(out[13], sel, a[13], b[13]);
mux m14(out[14], sel, a[14], b[14]);
mux m15(out[15], sel, a[15], b[15]);
endmodule
