`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2019 15:39:13
// Design Name: 
// Module Name: org8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module org8(out,x,y);
input [7:0]x;
input [7:0]y;
output [7:0]out;
org o0(out[0],x[0],y[0]);
org o1(out[1],x[1],y[1]);
org o2(out[2],x[2],y[2]);
org o3(out[3],x[3],y[3]);
org o4(out[4],x[4],y[4]);
org o5(out[5],x[5],y[5]);
org o6(out[6],x[6],y[6]);
org o7(out[7],x[7],y[7]);
endmodule

