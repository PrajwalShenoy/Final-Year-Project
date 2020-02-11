`timescale 1ns / 1ps

module rom_tb;

//module program_counter(out, ld_sig, rst, clk, ld_in);


reg clk;
wire [15:0] pc_o;
wire [15:0] instruction;
reg temp_ld_sig, temp_rst;
reg [15:0] temp_ld_in;

rom r1(instruction, clk, pc_o);
program_counter p1(pc_o, temp_ld_sig, temp_rst, clk, temp_ld_in);

initial
begin
    clk = 1'b0;
    forever
        #50 clk =~ clk;
end


initial 
begin
    temp_rst = 1'b0;
    temp_ld_sig = 1'b1;
    temp_ld_in = 16'd0; #100
    temp_ld_sig = 1'b0;
end

initial 
begin
#1000 $finish;
end

endmodule
