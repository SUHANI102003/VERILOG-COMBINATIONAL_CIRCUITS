`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 22:57:45
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();
reg [0:7] d;
wire [0:2] out;

encoder_8by3 DUT (d,out);

initial
begin
   d = 8'b10000000;
#5 d = 8'b00100000;
#5 d = 8'b01000000;
#5 d = 8'b00000010;
#5 d = 8'b00000001;
#5 d = 8'b00010000;
#5 d = 8'b00001000;
#5 $finish;
end 
endmodule
