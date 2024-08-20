`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 20:27:42
// Design Name: 
// Module Name: adder_4bit_TB
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


module adder_4bit_TB();
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

adder_4bit DUT(.A(a), .B(b), .cin(cin), .sum(sum), .cout(cout));

initial
begin
a=4'b000; b=4'b1111; cin=1'b0;
#10 a=4'b1001; b=4'b0001;
#10 a=4'b1011; b=4'b0101;
#10 a=4'b0001; b=4'b0011;
#10 a=4'b1001; b=4'b1101;
#10 $finish;
end

initial
$monitor ($time, " a=%b, b=%b, c=%b, sum=%b, cout=%b",a,b,cin,sum,cout);
endmodule
