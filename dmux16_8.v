`timescale 1ns / 1ps

module dmux16_8(out1, out2, out3, out4, out5, out6, out7, out8, sel, a);
input [2:0] sel;
input [15:0] a;
output [15:0] out1, out2, out3, out4, out5, out6, out7, out8;
wire [15:0] w1, w2, w3, w4;
dmux16_4 d16_4(w1, w2, w3, w4, sel[2:1], a);
dmux16 d1(out1, out2, sel[0], w1);
dmux16 d2(out3, out4, sel[0], w2);
dmux16 d3(out5, out6, sel[0], w3);
dmux16 d4(out7, out8, sel[0], w4);
endmodule