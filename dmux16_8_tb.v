`timescale 1ns / 1ps


module dmux16_8_tb;
reg [2:0] sel;
reg [15:0] a;
wire [15:0] out1, out2, out3, out4, out5, out6, out7, out8;
dmux16_8 d16_8(out1, out2, out3, out4, out5, out6, out7, out8, sel, a);
initial begin
a = 16'b1111111111111111; sel = 16'd0;#5
a = 16'b1111111111111111; sel = 16'd1;#5
a = 16'b1111111111111111; sel = 16'd2;#5
a = 16'b1111111111111111; sel = 16'd3;#5
a = 16'b1111111111111111; sel = 16'd4;#5
a = 16'b1111111111111111; sel = 16'd5;#5
a = 16'b1111111111111111; sel = 16'd6;#5
a = 16'b1111111111111111; sel = 16'd7;#5
$finish;
end
endmodule
