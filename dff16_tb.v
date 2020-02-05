`timescale 1ns / 1ps

module dff16_tb;
reg clk;
reg [15:0] in;
wire [15:0] out;

dff16 d1(out, clk, in);

initial begin
clk = 1'b0;
forever
#5 clk =~ clk;
end

initial begin
in = 16'b0000000000000000; #10
in = 16'b1111111111111111; #10
in = 16'b0000000000000000; #10
in = 16'b1111111111111111; #10
in = 16'b0000000000000000; #10
in = 16'b0000000000000000; #10
in = 16'b1111111111111111; #10
in = 16'b1111111111111111; #10
$finish;
end

endmodule