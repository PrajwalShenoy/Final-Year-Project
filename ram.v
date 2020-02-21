`timescale 1ns / 1ps

module ram(inM_o, clk_i, writeM_i, addressM_i, outM_i);
input clk_i, writeM_i;
input [15:0] addressM_i, outM_i;
output [15:0] inM_o;
reg [15:0] inM_o;
reg [15:0] ram_store [512:0];
always @ (posedge clk_i)
begin
    if (writeM_i == 1'b1)
        ram_store[addressM_i] = outM_i;
    else
        inM_o = ram_store[addressM_i];
end
endmodule