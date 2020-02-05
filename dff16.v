`timescale 1ns / 1ps

module dff16(out, clk, in);
input clk;
input [15:0] in;
output [15:0] out;
dff d0(out[0], clk, in[0]);
dff d1(out[1], clk, in[1]);
dff d2(out[2], clk, in[2]);
dff d3(out[3], clk, in[3]);
dff d4(out[4], clk, in[4]);
dff d5(out[5], clk, in[5]);
dff d6(out[6], clk, in[6]);
dff d7(out[7], clk, in[7]);
dff d8(out[8], clk, in[8]);
dff d9(out[9], clk, in[9]);
dff d10(out[10], clk, in[10]);
dff d11(out[11], clk, in[11]);
dff d12(out[12], clk, in[12]);
dff d13(out[13], clk, in[13]);
dff d14(out[14], clk, in[14]);
dff d15(out[15], clk, in[15]);
endmodule
