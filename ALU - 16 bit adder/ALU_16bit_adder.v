`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 20:52:42
// Design Name: 
// Module Name: ALU_16bit_adder
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
// To check the flag status
// sign, overflow, zero, parity, carry

module ALU_16bit_adder(
input [15:0] a,b,
output [15:0] sum,
output sign, overflow, zero, parity, carry
    );   
wire [3:1] c;

assign sign = sum[15];
assign zero = ~|sum;
assign parity = ~^sum;
assign overflow = ((a[15] & b[15] &~sum[15]) | (~a[15] & ~b[15] & sum[15]));

adder_4bit A0 (a[3:0], b[3:0], 1'b0, sum[3:0], c[1]);
adder_4bit A1 (a[7:4], b[7:4], c[1], sum[7:4], c[2]);
adder_4bit A2 (a[11:8], b[11:8], c[2], sum[11:8], c[3]);
adder_4bit A3 (a[15:12], b[15:12], c[3], sum[15:12], carry);
endmodule
