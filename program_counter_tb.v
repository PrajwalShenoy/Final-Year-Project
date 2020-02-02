`timescale 1ns / 1ps

module program_counter_tb;
//module program_counter(out, ld_sig, rst, clk, ld_in);
reg clk, rst, ld_sig;
reg [15:0] ld_in;
wire [15:0] out;
program_counter p(out, ld_sig, rst, clk, ld_in);

initial begin
clk = 1'b0;
forever
#5 clk =~ clk;
end

initial begin
ld_in = 16'd0;
ld_sig = 1'b1; #10;
ld_sig = 1'b0; #10;
ld_in = 16'd20;
ld_sig = 1'b1; #10;
ld_sig = 1'b0; #10;
//forever
//#5 ld_sig =~ ld_sig;
end

initial begin
rst = 1'b0;
#30;
rst = 1'b1; #10;
rst = 1'b0;
//ld_sig = 1'b1;
//ld_sig = 1'b0;
end

initial begin
#100 ;
end

endmodule
