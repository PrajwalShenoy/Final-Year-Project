`timescale 1ns / 1ps

module dmux16_4(out1, out2, out3, out4, sel, a);
input [1:0] sel;
input [15:0] a;
output [15:0] out1, out2, out3, out4;
wire [15:0] w1, w2;
dmux16 d0(w1, w2, sel[1], a);
dmux16 d1(out1, out2, sel[0], w1);
dmux16 d2(out3, out4, sel[0], w2);
endmodule
