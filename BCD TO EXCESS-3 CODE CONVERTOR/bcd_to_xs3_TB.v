`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 17:28:10
// Design Name: 
// Module Name: bcd_to_xs3_TB
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


module bcd_to_xs3_TB();
reg [3:0] bcd;
wire [3:0] xs3;

bcd_to_xs3 DUT (bcd,xs3);

initial 
begin
   bcd = 4'b0000;
#5 bcd = 4'b0001;
#5 bcd = 4'b0010;
#5 bcd = 4'b0011;
#5 bcd = 4'b0100;
#5 bcd = 4'b0101;
#5 bcd = 4'b0110;
#5 bcd = 4'b0111;
#5 bcd = 4'b1000;
#5 bcd = 4'b1001;
#5 $finish;
end

initial 
$monitor ($time, " bcd = %b,  xs-3 = %b", bcd,xs3);
endmodule
