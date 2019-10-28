`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2019 16:24:48
// Design Name: 
// Module Name: and16
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


module and16(out,x,y);
input [15:0]x;
input [15:0]y;
output [15:0]out;
andg a0(out[0],x[0],y[0]);
andg a1(out[1],x[1],y[1]);
andg a2(out[2],x[2],y[2]);
andg a3(out[3],x[3],y[3]);
andg a4(out[4],x[4],y[4]);
andg a5(out[5],x[5],y[5]);
andg a6(out[6],x[6],y[6]);
andg a7(out[7],x[7],y[7]);
andg a8(out[8],x[8],y[8]);
andg a9(out[9],x[9],y[9]);
andg a10(out[10],x[10],y[10]);
andg a11(out[11],x[11],y[11]);
andg a12(out[12],x[12],y[12]);
andg a13(out[13],x[13],y[13]);
andg a14(out[14],x[14],y[14]);
andg a15(out[15],x[15],y[15]);
endmodule
