`timescale 1ns / 1ps
module dff(out, clk, in);
input clk, in;
output out;
wire p, o, w_not, q, q_bar;
nand n11(p, in, clk);
nand n12(o, clk, w_not);
nand n21(q, p, q_bar);
nand n22(q_bar, o, q);
not not1(w_not, in);
assign out = q;
endmodule
