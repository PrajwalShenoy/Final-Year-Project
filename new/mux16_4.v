`timescale 1ns / 1ps

module mux16_4(out, sel, a, b, c, d);
input [1:0] sel;
input [15:0] a,b,c,d;
output [15:0] out;
wire [15:0] w1, w2;
mux16 mux4_1(w1, sel[0], a,b);
mux16 mux4_2(w2, sel[0], c,d);
mux16 mux4_3(out, sel[1], w1, w2);
endmodule
