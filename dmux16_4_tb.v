`timescale 1ns / 1ps

module dmux16_4_tb;
reg [1:0] sel;
reg [15:0] a;
wire [15:0] out1, out2, out3, out4;
dmux16_4 de_1(out1, out2, out3, out4, sel, a);
initial begin
sel = 2'b00; a = 16'b1111111111111111;#5
sel = 2'b01; a = 16'b1111111111111111;#5
sel = 2'b10; a = 16'b1111111111111111;#5
sel = 2'b11; a = 16'b1111111111111111;#5
$finish;
end
endmodule
