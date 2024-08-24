`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2024 12:39:21
// Design Name: 
// Module Name: MUX41_21
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


module MUX41_21(
input [3:0] i,
input [1:0] sel,
output f
    );
    
wire [1:0] y;
MUX_21 M1 (i[1:0], sel[0], y[0]);
MUX_21 M2 (i[3:2], sel[0], y[1]);
MUX_21 M3 (y, sel[1], f);
endmodule
