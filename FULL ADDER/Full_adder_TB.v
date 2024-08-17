`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 14:34:50
// Design Name: 
// Module Name: Full_adder_TB
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


module Full_adder_TB();
reg x,y,cin;
wire s,cout;

Full_adder FA (.a(x), .b(y), .cin(cin), .sum(s), .cout(cout));

initial begin
    x=0; y=0; cin=0;
#10 x=0; y=0; cin=1;
#10 x=0; y=1; cin=0;
#10 x=0; y=1; cin=1;
#10 x=1; y=0; cin=0;
#10 x=1; y=0; cin=1;
#10 x=1; y=1; cin=0;
#10 x=1; y=1; cin=1;
#10 $finish;
end

initial
$monitor ($time, " x = %b, y = %b, cin = %b, sum = %b, cout = %b",x,y,cin,s,cout);
endmodule
