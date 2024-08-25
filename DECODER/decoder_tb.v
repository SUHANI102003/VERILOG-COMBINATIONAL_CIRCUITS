`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 21:22:52
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
reg en;
reg [1:0] in;
wire [3:0] y;

decoder_24 DUT (en,in,y);
initial begin
     in = 2'b00; en = 1'b1;
#10  in = 2'b01; en = 1'b1;
#10  in = 2'b10; en = 1'b1;
#10  in = 2'b11; en = 1'b1;
#10 en = 1'b0;
#10 $finish;
end

initial
$monitor ($time, " in = %b, y = %b",in,y);
endmodule
