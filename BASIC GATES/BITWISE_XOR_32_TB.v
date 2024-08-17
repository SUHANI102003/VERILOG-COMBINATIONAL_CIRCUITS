`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 13:05:03
// Design Name: 
// Module Name: BITWISE_XOR_32_TB
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


module BITWISE_XOR_32_TB();
reg [31:0] a,b;
wire [31:0] f;

BITWISE_XOR_32 DUT (.x(a), .y(b), .z(f));

initial
begin
$monitor ($time, " a= %b, b=%b, f=%b", a,b,f);
a = 16'hffff; b = 16'h5a55;
#10 a = 16'haaaa; b = 16'hbbbb;
#10 $finish;
end
endmodule
