`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 14:26:27
// Design Name: 
// Module Name: MUL_TB
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


module MUL_TB();
reg [3:0] x;
reg [1:0] y;
wire [5:0] m;

MUL_4_by_2bit MUL (x,y,m);

initial
begin
x=4'b0000; y=2'b11;
#10 x=4'b1101; y=2'b11;
#10 x=4'b1101; y=2'b10;
#10 $finish;
end

endmodule
