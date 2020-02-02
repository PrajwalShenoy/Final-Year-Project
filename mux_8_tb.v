`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2020 23:18:15
// Design Name: 
// Module Name: mux_8_tb
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


module mux_8_tb;
reg a, b, c, d, e, f, g, h;
reg [2:0]sel;
wire out;
mux_8 mux1(out, sel, a, b, c, d, e, f, g, h);
initial begin
a = 1'b1; b = 1'b0; c = 1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; sel = 3'd0;#5
a = 1'b0; b = 1'b1; c = 1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; sel = 3'd1;#5
a = 1'b1; b = 1'b0; c = 1'b1; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b0; sel = 3'd2;#5
a = 1'b0; b = 1'b0; c = 1'b0; d=1'b1; e=1'b0; f=1'b0; g=1'b0; h=1'b0; sel = 3'd3;#5
a = 1'b0; b = 1'b0; c = 1'b0; d=1'b0; e=1'b1; f=1'b0; g=1'b0; h=1'b0; sel = 3'd4;#5
a = 1'b0; b = 1'b0; c = 1'b0; d=1'b0; e=1'b0; f=1'b1; g=1'b0; h=1'b0; sel = 3'd5;#5
a = 1'b0; b = 1'b0; c = 1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b1; h=1'b0; sel = 3'd6;#5
a = 1'b0; b = 1'b0; c = 1'b0; d=1'b0; e=1'b0; f=1'b0; g=1'b0; h=1'b1; sel = 3'd7;#5

$finish;
end
endmodule
