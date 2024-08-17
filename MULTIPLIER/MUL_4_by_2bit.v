`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 14:09:49
// Design Name: 
// Module Name: MUL_4_by_2bit
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


module MUL_4_by_2bit(
input [3:0] x,
input [1:0] y,
output [5:0] m
    );
    
 wire [7:1] c;
 and a1 (m[0], x[0],y[0]),
     a2 (c[1], x[0],y[1]),  
     a3 (c[2], x[1],y[0]),  
     a4 (c[3], x[1],y[1]),  
     a5 (c[4], x[2],y[0]),  
     a6 (c[5], x[2],y[1]),  
     a7 (c[6], x[3],y[0]),  
     a8 (c[7], x[3],y[1]);
     
 wire t1,t2,t3;    
Half_adder HA (c[1], c[2], m[1], t1);  
Full_adder FA0 (c[3], c[4], t1, m[2], t2);
Full_adder FA1 (c[5], c[6], t2, m[3], t3);
Full_adder FA2 (c[7], 1'b0, t3, m[4], m[5]);
     
endmodule
