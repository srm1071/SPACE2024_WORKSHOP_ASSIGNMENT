`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 23:32:53
// Design Name: 
// Module Name: modreduce_255mult
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
module modreduce_255mult(inp,out);
input[509:0] inp;
output [254:0] out;
wire [260:0] cl,ch;
wire [260:0] w1,w2,w3;
wire [260:0] w4,w5;
wire [260:0] w6,w7;
wire c_out1,c_out2,c_out3,c_out11,c_out21,c_out31;
wire [254:0] cl1;
wire [254:0] ch1;
wire [254:0] w11,w21,w31;
wire [254:0] w41,w51;
wire [254:0] w61,w71;
wire [255:0] outprime;
wire [254:0] prime;
assign prime=255'd57896044618658097711785492504343953926634992332820282019728792003956564819949;

assign cl=inp[254:0];
assign ch=inp[509:255];

assign w1=ch<<4;
assign w2=ch<<1;
assign w3=w1+w2+cl+ch;

assign cl1=w3[254:0];
assign ch1=w3[260:255];

assign w11=ch1<<4;
assign w21=ch1<<1;
assign w31=w11+w21+cl1+ch1;

assign outprime=w31-prime;
assign out=(outprime[1])?w31:outprime;

endmodule
