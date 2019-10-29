`timescale 1ns / 1ps

module is_equal(out, x, y);
input [15:0] x, y;
output out;

wire [13:0] and_out;
wire [15:0] xor_out;
wire out_temp;

xorg x0(xor_out[0], x[0], y[0]);
xorg x1(xor_out[1], x[1], y[1]);
xorg x2(xor_out[2], x[2], y[2]);
xorg x3(xor_out[3], x[3], y[3]);
xorg x4(xor_out[4], x[4], y[4]);
xorg x5(xor_out[5], x[5], y[5]);
xorg x6(xor_out[6], x[6], y[6]);
xorg x7(xor_out[7], x[7], y[7]);
xorg x8(xor_out[8], x[8], y[8]);
xorg x9(xor_out[9], x[9], y[9]);
xorg x10(xor_out[10], x[10], y[10]);
xorg x11(xor_out[11], x[11], y[11]);
xorg x12(xor_out[12], x[12], y[12]);
xorg x13(xor_out[13], x[13], y[13]);
xorg x14(xor_out[14], x[14], y[14]);
xorg x15(xor_out[15], x[15], y[15]);

org a0(and_out[0], xor_out[1], xor_out[0]);
org a1(and_out[1], xor_out[2], and_out[0]);
org a2(and_out[2], xor_out[3], and_out[1]);
org a3(and_out[3], xor_out[4], and_out[2]);
org a4(and_out[4], xor_out[5], and_out[3]);
org a5(and_out[5], xor_out[6], and_out[4]);
org a6(and_out[6], xor_out[7], and_out[5]);
org a7(and_out[7], xor_out[8], and_out[6]);
org a8(and_out[8], xor_out[9], and_out[7]);
org a9(and_out[9], xor_out[10], and_out[8]);
org a10(and_out[10], xor_out[11], and_out[9]);
org a11(and_out[11], xor_out[12], and_out[10]);
org a12(and_out[12], xor_out[13], and_out[11]);
org a13(and_out[13], xor_out[14], and_out[12]);
org a14(out_temp, xor_out[15], and_out[13]);

notg n1(out, out_temp);

endmodule
