`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 22:25:58
// Design Name: 
// Module Name: CLA_TB
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


module CLA_TB();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

carry_look_ahead_adder DUT(a,b,cin,sum,cout);

initial
begin
a=4'b0101; b=4'b1100; cin=1'b0;
#10 a=4'b1101; b=4'b0000;
#10 a=4'b1001; b=4'b1100;
#10 a=4'b1111; b=4'b0000;
#10 $finish;
end
endmodule
