`timescale 1ns / 1ps

module dmux16_tb;
reg sel;
reg [15:0] a;
wire [15:0] out1, out2;
dmux16 de1(out1, out2, sel, a);
initial begin
sel = 1'b0; a = 16'b1111111111111111;#5
sel = 1'b1; a = 16'b1111111111111111;#5
$finish;
end
endmodule
