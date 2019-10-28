`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2019 10:05:53
// Design Name: 
// Module Name: or16_tb
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


module or16_tb();
reg [15:0]x,y;
wire [15:0]out;
org16 or1(out,x,y);
initial begin
x = 16'b0000000000000000; y = 16'b0000000000000000;#5
x = 16'b0000000000000000; y = 16'b0000000000000001;#5
x = 16'b0000000000000011; y = 16'b0000000000000001;#5
x = 16'b0001111110000000; y = 16'b1111100000000000;#5
$finish;
end
endmodule

