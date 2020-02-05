`timescale 1ns / 1ps

module dff_tb;
reg clk, in;
wire out;

dff d1(out, clk, in);

initial begin
clk = 1'b0;
forever
#5 clk =~ clk;
end

initial begin
in = 1'b0; #10
in = 1'b1; #10
in = 1'b0; #10
in = 1'b1; #10
in = 1'b0; #10
in = 1'b0; #10
in = 1'b1; #10
in = 1'b1; #10
$finish;
end

endmodule