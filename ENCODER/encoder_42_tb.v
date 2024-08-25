`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 11:59:48
// Design Name: 
// Module Name: encoder_42_tb
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


module encoder_42_tb();
reg [3:0] w;
wire [1:0] y;
integer k;

encoder_42 dut (.y(y), .w(w));

initial
#150 $finish;

initial
begin
    w = 4'b0000;
    for (k=1; k<32; k=k+1)
    begin
         #5 w = w+1;
   
   end
 end
endmodule
