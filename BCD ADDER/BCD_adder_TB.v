`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 13:29:09
// Design Name: 
// Module Name: BCD_adder_TB
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


module BCD_adder_TB();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

BCD_adder DUT (a,b,cin,sum,cout);

initial
begin
    a=4'b1010; b=4'b1100; cin=1'b0;
#10 a=4'b0010; b=4'b0100; 
#10 a=4'b0110; b=4'b0100; 
#10 a=4'b1011; b=4'b1100; 
#10 $finish;
end

initial
$monitor ($time, " a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b,cin,sum,cout);
endmodule
