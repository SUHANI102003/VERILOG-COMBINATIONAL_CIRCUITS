`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 12:26:48
// Design Name: 
// Module Name: add_sub_TB
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


module add_sub_TB();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

adder_subtractor DUT (a,b,cin,sum,cout);

initial
begin
a=4'b0000; b=4'b1010; cin=1'b0;
#10 a=4'b0100; b=4'b1010; cin=1'b0;
#10 a=4'b0110; b=4'b1000; cin=1'b1;
#10 a=4'b0010; b=4'b1011; cin=1'b1;
#10 $finish;
end
endmodule
