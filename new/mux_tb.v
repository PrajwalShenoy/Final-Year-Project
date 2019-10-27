`timescale 1ns / 1ps

module mux_tb;
reg sel, a, b;
wire out;
mux mux1(out, sel, a, b);
initial begin
a = 1'b0 ; b = 1'b0 ; sel = 1'b0;#5
a = 1'b0 ; b = 1'b0 ; sel = 1'b1;#5
a = 1'b0 ; b = 1'b1 ; sel = 1'b0;#5
a = 1'b0 ; b = 1'b1 ; sel = 1'b1;#5
a = 1'b1 ; b = 1'b0 ; sel = 1'b0;#5
a = 1'b1 ; b = 1'b0 ; sel = 1'b1;#5
a = 1'b1 ; b = 1'b1 ; sel = 1'b0;#5
a = 1'b1 ; b = 1'b1 ; sel = 1'b1;#5
$finish;
end
endmodule