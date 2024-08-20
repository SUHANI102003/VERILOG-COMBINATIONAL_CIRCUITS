`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 23:18:25
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
input [3:0] d,
output [1:0] out
    );
//d[3] has highest priority
//*******************************
//BEHAVIORAL MODELLING
/*
always @(d)
if (d[3]) out = 2'b11;
else if (d[2]) out = 2'b10;
else if (d[1]) out = 2'b01;
else           out = 2'b00;
*/
//******************************
/* DATAFLOW MODELLING
assign out[1] = d[3] | d[2];
assign out[0] = d[3] | (d[1] & ~d[2]); 
*/
//******************************
// STRUCTURAL MODELLING
wire t1,t2;
not n1 (t2, d[2]);
or g1 (out[1], d[3], d[2]);
and g2 (t1, d[1],t2);
or g3 (out[0], d[3], t1);
endmodule
