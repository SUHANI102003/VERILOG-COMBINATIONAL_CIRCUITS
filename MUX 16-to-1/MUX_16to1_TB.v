`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2024 13:05:32
// Design Name: 
// Module Name: MUX_16to1_TB
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


module MUX_16to1_TB();
reg [15:0] in;
reg [3:0] sel;
wire f;

MUX_16to1 DUT (in,sel,f);

initial
begin
sel = 4'b0000; in = 16'haa56;
#5 sel = 4'b0101;
#5 sel = 4'b0111;
#5 sel = 4'b0001;
#5 $finish;
end

initial
$monitor ($time, "sel = %b, in=%h, f=%b", sel,in,f);
endmodule
