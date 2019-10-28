`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2019 16:42:17
// Design Name: 
// Module Name: andg16_tb
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


module andg16_tb();
reg [15:0]x,y;
wire [15:0]out;
and16 and1(out,x,y);
initial begin
x = 16'b0000000000000000; y = 16'b0000000000000000;#5
x = 16'b0000000000000000; y = 16'b0000000000000001;#5
x = 16'b0000000000000011; y = 16'b0000000000000001;#5
x = 16'b0000000000001111; y = 16'b1111100000001111;#5
$finish;
end
endmodule

