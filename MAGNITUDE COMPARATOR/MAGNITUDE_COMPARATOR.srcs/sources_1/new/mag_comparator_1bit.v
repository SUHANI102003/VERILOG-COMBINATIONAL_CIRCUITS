`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 10:33:36
// Design Name: 
// Module Name: mag_comparator_1bit
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


module mag_comparator_1bit(
    input x,y,
    output wire g,e,l                // g = greater, e = equal, l = less
    );
    
// STRUCTURAL MODELLING

wire t0;
nand g0 (t0,x,y);
and g1(g,x,t0), g2 (l,y,t0);
nor g4(e,l,g);


//DATAFLOW

assign g = x & ~y;
assign e = (x&y) | (~x & ~y);
assign l = ~x & y;



endmodule
