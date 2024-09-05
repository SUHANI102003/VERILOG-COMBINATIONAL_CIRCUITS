`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 12:35:38
// Design Name: 
// Module Name: compliment_10
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


module compliment_10(
input [3:0]b,
input c,
output [3:0] s,
output carry
    );
    
adder_4bit aa0 (
    .A(4'b1010),
    .B(b),
    .sum(s),
    .cout(carry),
    .cin(c));
    
endmodule
