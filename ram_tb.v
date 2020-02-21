`timescale 1ns / 1ps

module ram_tb;
reg clk_i, writeM_i;
reg [15:0] outM_i, addressM_i;
wire [15:0] inM_o;
initial begin
    clk_i = 1'b0;
    forever
    #50 clk_i =~ clk_i;
end
ram r1(inM_o, clk_i, writeM_i, addressM_i, outM_i);
//module ram(inM_o, clk_i, writeM_i, addressM_i, outM_i);

initial begin
    writeM_i = 1'b1;
    addressM_i = 16'd0; outM_i = 16'd0; #100
    addressM_i = 16'd1; outM_i = 16'd1; #100
    addressM_i = 16'd2; outM_i = 16'd2; #100
    addressM_i = 16'd3; outM_i = 16'd3; #100
    addressM_i = 16'd4; outM_i = 16'd4; #100
    addressM_i = 16'd5; outM_i = 16'd5; #100
    addressM_i = 16'd6; outM_i = 16'd6; #100
    addressM_i = 16'd7; outM_i = 16'd7; #100
    addressM_i = 16'd8; outM_i = 16'd8; #100
    addressM_i = 16'd9; outM_i = 16'd9; #100
    addressM_i = 16'd10; outM_i = 16'd10; #100
    
    writeM_i = 1'b0;
    addressM_i = 16'd0; #100
    addressM_i = 16'd1; #100
    addressM_i = 16'd2; #100
    addressM_i = 16'd3; #100
    addressM_i = 16'd4; #100
    addressM_i = 16'd5; #100
    addressM_i = 16'd6; #100
    addressM_i = 16'd7; #100
    addressM_i = 16'd8; #100
    addressM_i = 16'd9; #100
    addressM_i = 16'd10; #100
    addressM_i = 16'd11; #100
    addressM_i = 16'd12; #100
    addressM_i = 16'd13; #100
    addressM_i = 16'd14; #100
    addressM_i = 16'd15; #100;
end

initial begin
    #3000 $finish;  
end
endmodule
