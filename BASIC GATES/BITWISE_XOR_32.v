`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 12:59:45
// Design Name: 
// Module Name: BITWISE_XOR_32
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

parameter N = 32;
module BITWISE_XOR_32(
    input [N-1:0] x,y,
    output [N-1:0] z
    );
  genvar p;
  generate 
    for(p=0; p<N; p=p+1)
        begin : xorbw
        xor x1 (z[p], x[p], y[p]);
        end
  endgenerate  
    
endmodule
