`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 23:29:42
// Design Name: 
// Module Name: priority_encoder_TB
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


module priority_encoder_TB();
reg [3:0] d;
wire [1:0] out;

priority_encoder DUT (d,out);

initial
begin
d = 4'b1000;
#5 d = 4'b0010;
#5 d = 4'b0100;
#5 d = 4'b0001;
#5 $finish;
end
endmodule
