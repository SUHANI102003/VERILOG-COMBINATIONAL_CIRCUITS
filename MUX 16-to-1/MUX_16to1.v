`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2024 12:57:54
// Design Name: 
// Module Name: MUX_16to1
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


module MUX_16to1(
    input [15:0] in,
    input [3:0] sel,
    output f
    );
    
 wire [3:0] y;
 MUX41_21 M1 (in[3:0], sel[1:0], y[0]);
 MUX41_21 M2 (in[7:4], sel[1:0], y[1]);
 MUX41_21 M3 (in[11:8], sel[1:0], y[2]);
 MUX41_21 M4 (in[15:12], sel[1:0], y[3]);
 MUX41_21 M5 (y, sel[3:2], f);
 
 
endmodule
