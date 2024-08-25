`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 13:10:28
// Design Name: 
// Module Name: priority_generic_tb
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


module priority_generic_tb(
 );
 parameter n = 6;
 reg [n-1:0] w;
 wire z;
 wire [$clog2(n)-1 : 0] y;
 integer k;
 
 priority_encoder_generic #(.n(n)) dut (.w(w), .z(z), .y(y));
 
 initial
 #(10 * 2**n + 10) $finish;
 
 initial
 begin
    w=0;
    for (k=0; k<2**n *2; k=k+1)
    begin
    #5 w=w+1;
    end
 end
 
endmodule
