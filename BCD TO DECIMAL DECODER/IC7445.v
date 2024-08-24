`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 21:37:47
// Design Name: 
// Module Name: IC7445
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


module IC7445(
input [3:0] in,
output [9:0] out  
  );
  
 wire t0,t1,t2,t3;
 wire t4,t5,t6,t7;
 
 not n1 (t0,in[0]), n2 (t1,in[1]), n3 (t2,in[2]), n4 (t3,in[3]);
 not n5 (t4,t0), n6 (t5,t1), n7 (t6,t2), n8 (t7,t3);
 nand g1 (out[0],t0,t1,t2,t3 ), //0000
      g2 (out[1],t4,t1,t2,t3 ), //0001
      g3 (out[2],t0,t5,t2,t3 ), //0010
      g4 (out[3],t4,t5,t2,t3 ), //0011
      g5 (out[4],t0,t1,t6,t3 ), //0100
      g6 (out[5],t4,t1,t6,t3 ), //0101
      g7 (out[6],t0,t5,t6,t3 ), //0110
      g8 (out[7],t4,t5,t6,t3 ), //0111
      g9 (out[8],t0,t1,t2,t7 ), //1000
      g10 (out[9],t4,t1,t2,t7 );//1001
endmodule
