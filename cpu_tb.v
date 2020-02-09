`timescale 1ns / 1ps



module cpu_tb;
reg [15:0] instruction,inM;
reg rst,clk;
wire [15:0] outM,PCout,addrM;
wire WriteM;



cpu c1(outM,PCout,WriteM,addrM,instruction,inM,rst,clk);

initial begin
clk = 1'b0;
forever
#50 clk =~ clk;
end

initial begin
inM = 16'd0;instruction = 16'b0000000000001111;rst = 1'b1;#100 // reset
inM = 16'd0;instruction = 16'b0000000000001111;rst = 1'b1;#100 //a=15
inM = 16'd0;instruction = 16'b1110100010010000;rst = 1'b0;#100 //d=15
inM = 16'd0;instruction = 16'b1110100010001000;rst = 1'b0;#100 //m[15] = 15
inM = 16'd0;instruction = 16'b0000000000000001;rst = 1'b0;#100//a=1
inM = 16'd0;instruction = 16'b1110001100001001;rst = 1'b0;#100//m[1] =D = 15

$finish;
end

endmodule

