`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2024 04:58:12 PM
// Design Name: 
// Module Name: montgomery_kyber
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module montgomery_kyber(clk,a,b,out);
input clk;
input [11:0] a,b;
output [11:0] out;
wire [23:0] res;
reg [23:0] res_t;
wire [11:0] prime;
assign prime=12'd3329;

assign res=a*b;
always@(posedge clk) begin
    res_t<=res;
end
//write your code here

endmodule
