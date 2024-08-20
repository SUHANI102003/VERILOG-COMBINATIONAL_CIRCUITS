`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 22:20:25
// Design Name: 
// Module Name: test
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


module test();
reg [3:0] bcd;
wire [6:0] seg;
integer count;
bcd_to_7seg_decoder DUT (bcd,seg);

initial
begin
for (count=0 ; count<=8; count=count+1)
begin
bcd = count;
#100;
end
end
endmodule
