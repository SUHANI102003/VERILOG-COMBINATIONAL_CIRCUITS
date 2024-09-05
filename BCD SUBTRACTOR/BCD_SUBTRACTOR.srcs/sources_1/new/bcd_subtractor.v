`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 09:46:55
// Design Name: 
// Module Name: bcd_subtractor
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


module bcd_subtractor(
input [3:0] x,y,
input cin,
output [3:0] w,
output sign,
output [4:0] ans
    );

wire [3:0] p;    
compliment_10 cc (
    .b(y),
    .c(cin),
    .carry(),
    .s(p)
    );

wire [3:0] t;
wire o;
BCD_adder ba (
    .a(x),
    .b(p),
    .cin(1'b0),
    .sum(t),
    .cout(o)
    );  
      
compliment_10 cc0 (
    .b(t),
    .c(~o),
    .carry(),
    .s(w)
    );
assign sign = ~o;    
assign ans = {sign,w};
endmodule
