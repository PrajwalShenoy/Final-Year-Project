`timescale 1ns / 1ps

module mux16_8(out, sel, a, b, c, d, e, f, g, h);
input [15:0] a, b, c, d, e, f, g, h;
input [2:0] sel;
output [15:0] out;
wire [15:0] w1, w2, w3, w4, w5, w6, w7;
mux16 mux1(w1, sel[0], a, b);
mux16 mux2(w2, sel[0], c, d);
mux16 mux3(w3, sel[0], e, f);
mux16 mux4(w4, sel[0], g, h);
mux16 mux5(w5, sel[1], w1, w2);
mux16 mux6(w6, sel[1], w3, w4);
mux16 mux7(out, sel[2], w5, w6);
endmodule