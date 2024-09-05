`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 23:55:38
// Design Name: 
// Module Name: unit_cell
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


module unit_cell(
input x,y,bin,sel,
output wire bout,div
    );
    
wire t0;    
Full_sub fs (
        .a(x),
        .b(y),
        .bin(bin),
        .bout(bout),
        .d(t0));
        
MUX_21 M0 (
        .i0(x),
        .i1(t0),
        .f(div),
        .sel(sel));
endmodule
