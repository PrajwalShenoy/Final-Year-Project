`timescale 1ns / 1ps
module dmux_tb;
reg sel,a;
wire out1, out2;
dmux dmux1(out1,out2,sel,a);
initial begin
a = 1'b0 ; sel = 1'b0;#5
a = 1'b0 ; sel = 1'b1;#5
a = 1'b1 ; sel = 1'b0;#5
a = 1'b1 ; sel = 1'b1;#5
$finish;
end
endmodule