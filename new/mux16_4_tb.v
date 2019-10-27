`timescale 1ns / 1ps

module mux16_4_tb;
reg [1:0] sel;
reg [15:0] a,b,c,d;
wire [15:0] out;
mux16_4 mux4_1(out, sel, a,b,c,d);
initial begin
sel = 2'd0; a = 16'd1; b = 16'd0; c = 16'd0; d = 16'd0;#5
sel = 2'd1; a = 16'd0; b = 16'd1; c = 16'd0; d = 16'd0;#5
sel = 2'd2; a = 16'd0; b = 16'd0; c = 16'd1; d = 16'd0;#5
sel = 2'd3; a = 16'd0; b = 16'd0; c = 16'd0; d = 16'd1;#5
$finish;
end
endmodule