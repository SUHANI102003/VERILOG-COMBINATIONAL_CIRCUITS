`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 12:20:33
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor(
input [3:0] a,b,
input cin,
output [3:0] sum,
output cout
    );
    
 wire t0,t1,t2,t3t4,t5,t6;
 
 xor x1 (t0, b[0], cin),
     x2 (t1, b[1], cin),
     x3 (t2, b[2], cin),
     x4 (t3, b[3], cin);
Full_adder FA0 (a[0], t0, cin, sum[0], t4);
Full_adder FA1 (a[1], t1, t4, sum[1], t5);
Full_adder FA2 (a[2], t2, t5, sum[2], t6);
Full_adder FA3 (a[3], t3, t6, sum[3], cout);
endmodule
