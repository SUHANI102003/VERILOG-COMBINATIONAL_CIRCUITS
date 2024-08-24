`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 19:51:46
// Design Name: 
// Module Name: adder_nbit_TB
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


module adder_nbit_TB();
parameter N = 8;
reg carry_in;
reg [N-1:0] A,B;
wire carry_out;
wire [N-1:0] sum;

adder_Nbit DUT (carry_in, A,B,carry_out,sum);

initial 
begin
A = 8'b00000000; B = 8'b00001010;
#10 A = 8'b00000011; B = 8'b00001010;
#10 A = 8'b00110001; B = 8'b00101010;
#10 A = 8'b00000111; B = 8'b00001011;
#10 $finish;
end
endmodule
