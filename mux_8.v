`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2020 23:05:18
// Design Name: 
// Module Name: mux_8
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


module mux_8(out, sel, a, b, c, d, e, f, g, h);
input a, b, c, d, e, f, g, h;
input [2:0]sel;
output out;
wire w1, w2, w3, w4, w5, w6;

mux mux1(w1, sel[0], a, b);
mux mux2(w2, sel[0], c, d);
mux mux3(w3, sel[0], e, f);
mux mux4(w4, sel[0], g, h);
mux mux5(w5, sel[1], w1, w2);
mux mux6(w6, sel[1], w3, w4);
mux mux7(out, sel[2], w5, w6);


endmodule
