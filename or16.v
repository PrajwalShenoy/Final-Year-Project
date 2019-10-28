`timescale 1ns / 1ps

module or16(out,x,y);
input [15:0]x;
input [15:0]y;
output [15:0]out;
org o0(out[0],x[0],y[0]);
org o1(out[1],x[1],y[1]);
org o2(out[2],x[2],y[2]);
org o3(out[3],x[3],y[3]);
org o4(out[4],x[4],y[4]);
org o5(out[5],x[5],y[5]);
org o6(out[6],x[6],y[6]);
org o7(out[7],x[7],y[7]);
org o8(out[8],x[8],y[8]);
org o9(out[9],x[9],y[9]);
org o10(out[10],x[10],y[10]);
org o11(out[11],x[11],y[11]);
org o12(out[12],x[12],y[12]);
org o13(out[13],x[13],y[13]);
org o14(out[14],x[14],y[14]);
org o15(out[15],x[15],y[15]);
endmodule