`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 22:02:19
// Design Name: 
// Module Name: bcd_to_7seg_decoder
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


module bcd_to_7seg_decoder(
input [3:0] bcd,
output reg [6:0] seg
    );
  
// abcdefg 
// a = most sig , b = least sig  
// 1 = off, 0 = on
always @(bcd)
begin
case(bcd)
    0 : seg = 7'b0000001;
    1 : seg = 7'b1001111;
    2 : seg = 7'b0010010;
    3 : seg = 7'b0000110;
    4 : seg = 7'b1001100;
    5 : seg = 7'b0100100;
    6 : seg = 7'b0100000;
    7 : seg = 7'b0001111;
    8 : seg = 7'b0000000;
    9 : seg = 7'b0000101;
    default : seg = 7'b1111111; 
endcase
end
endmodule
