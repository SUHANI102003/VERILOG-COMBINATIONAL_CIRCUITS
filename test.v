`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 21:51:56
// Design Name: 
// Module Name: test
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


module test();
reg [3:0] in;
wire [9:0] out;

IC7445 DUT (in,out);

initial
begin
    in = 4'b0000;
#10 in = 4'b0001;
#10 in = 4'b0010;
#10 in = 4'b0011;
#10 in = 4'b0100;
#10 in = 4'b0101;
#10 in = 4'b0110;
#10 in = 4'b0111;
#10 in = 4'b1000;
#10 in = 4'b1001;
#10 $finish;
end
// output is ACTIVE LOW
initial
$monitor ($time, "in = %b, out = %d", in,out);
endmodule
