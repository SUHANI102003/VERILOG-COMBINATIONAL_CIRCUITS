`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 10:01:08
// Design Name: 
// Module Name: bcd_subtractor_tb
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


module bcd_subtractor_tb();
reg [3:0] x,y;
reg cin;
wire sign;
wire [3:0] w;
wire [4:0] ans;

bcd_subtractor DUT (
    .x(x),
    .y(y),
    .cin(cin),
    .sign(sign),
    .ans(ans),
    .w(w)
    );
    
 initial 
    #200 $finish ;
    
initial
begin
         cin = 1'b1; x = 4'd4; y = 4'd7;
    #100 x = 4'd3; y = 4'd8;    
end

endmodule
