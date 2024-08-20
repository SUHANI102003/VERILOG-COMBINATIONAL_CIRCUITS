`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 21:37:40
// Design Name: 
// Module Name: ALU_16bit_adder_TB
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


module ALU_16bit_adder_TB();
reg [15:0] a,b;
wire [15:0] z;
wire zero,o,s,p,c;

ALU_16bit_adder DUT(.a(a), .b(b), .sum(z), .sign(s), .overflow(o), .parity(p), .zero(zero), .carry(c));

initial
begin
a=16'haaaa; b=16'hffff;
#10 a=16'h0000; b=16'h4563;
#10 a=16'haac2; b=16'hf33f;
#10 a=16'h11aa; b=16'hff00;
#10 $finish;
end

initial
$monitor ($time, " a=%h, b=%h, z=%h, zero=%b, o=%b, s=%b, p=%b, c=%b",a,b,z,zero,o,s,p,c);
endmodule
