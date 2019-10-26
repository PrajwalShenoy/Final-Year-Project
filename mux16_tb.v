`timescale 1ns / 1ps

module mux16_tb;
reg [15:0] a,b;
reg sel;
wire [15:0] out;
mux16 mux1(out, sel, a,b);
initial begin
sel = 1'b0; a = 16'd15; b = 16'd4444;#5
sel = 1'b1; a = 16'd15; b = 16'd4444;#5
$finish;
end
endmodule
