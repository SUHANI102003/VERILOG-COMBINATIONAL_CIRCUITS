`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 10:30:53
// Design Name: 
// Module Name: decoder_generic
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


module decoder_generic
#(parameter n = 3)(
input [n-1:0] w,   //[2:0]
input en,
output reg [0:2**n-1] y    // [0:7]
    );
    
always@(*)
begin
    y = 'b0; //default
    
    if(en)
        y[w] = 1'b1;
    else
        y = 'b0;
end
endmodule
