`timescale 1ns / 1ps

module not16(out, in);
input [15:0] in;
output [15:0] out;
notg n0(out[0],in[0]);
notg n1(out[1],in[1]);
notg n2(out[2],in[2]);
notg n3(out[3],in[3]);
notg n4(out[4],in[4]);
notg n5(out[5],in[5]);
notg n6(out[6],in[6]);
notg n7(out[7],in[7]);
notg n8(out[8],in[8]);
notg n9(out[9],in[9]);
notg n10(out[10],in[10]);
notg n11(out[11],in[11]);
notg n12(out[12],in[12]);
notg n13(out[13],in[13]);
notg n14(out[14],in[14]);
notg n15(out[15],in[15]);
endmodule
