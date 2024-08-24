`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 12:47:13
// Design Name: 
// Module Name: adder
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


module adder(
input [3:0] A,B,
input cin,
output [3:0] sum,
output cout
    );
//**********************************************    
    
// STRUCTURAL MODELLING
wire c1,c2,c3; 
Full_adder FA0 (A[0], B[0], cin, sum[0],c1);
Full_adder FA1 (A[1], B[1], c1, sum[1],c2);
Full_adder FA2 (A[2], B[2], c2, sum[2],c3);
Full_adder FA3 (A[3], B[3], c3, sum[3],cout);
//*************************************************
    
// DATAFLOW MODELLING
 assign {cout,sum} = A + B + cin;
endmodule
