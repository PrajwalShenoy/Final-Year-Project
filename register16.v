`timescale 1ns / 1ps

module register16(out, clk, load, in);
input clk, load;
input [15:0] in;
output[15:0] out;
register r0(out[0], clk, load, in[0]);
register r1(out[1], clk, load, in[1]);
register r2(out[2], clk, load, in[2]);
register r3(out[3], clk, load, in[3]);
register r4(out[4], clk, load, in[4]);
register r5(out[5], clk, load, in[5]);
register r6(out[6], clk, load, in[6]);
register r7(out[7], clk, load, in[7]);
register r8(out[8], clk, load, in[8]);
register r9(out[9], clk, load, in[9]);
register r10(out[10], clk, load, in[10]);
register r11(out[11], clk, load, in[11]);
register r12(out[12], clk, load, in[12]);
register r13(out[13], clk, load, in[13]);
register r14(out[14], clk, load, in[14]);
register r15(out[15], clk, load, in[15]);
endmodule

