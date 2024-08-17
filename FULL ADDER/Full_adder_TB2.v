`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 14:56:52
// Design Name: 
// Module Name: Full_adder_TB2
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


module Full_adder_TB2();
reg a,b,cin;
wire sum,cout;

Full_adder FA1(a,b,cin,sum,cout);

initial
begin
a=1'b0; b=1'b0; cin=1'b1;
$display ("T=%d, a= %b, b= %b, cin=%b, sum=%b, cout=%b",$time,a,b,cin,sum,cout);

#10;
a=1'b0; b=1'b1;
$display ("T=%d, a= %b, b= %b, cin=%b, sum=%b, cout=%b",$time,a,b,cin,sum,cout);

#10;
a=1'b1; b=1'b0;
$display ("T=%d, a= %b, b= %b, cin=%b, sum=%b, cout=%b",$time,a,b,cin,sum,cout);

#10;
a=1'b1; b=1'b1;
$display ("T=%d, a= %b, b= %b, cin=%b, sum=%b, cout=%b",$time,a,b,cin,sum,cout);

#10 $finish;
end
endmodule
