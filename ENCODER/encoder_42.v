`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 11:06:19
// Design Name: 
// Module Name: encoder_42
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


module encoder_42(
input [3:0] w,
output reg [1:0] y
    );
    
// BEHAVIORAL MODELLING

always@(*)
begin
    y = 2'bxx; //default
    /*
    case(w)
     4'b0001 : y = 2'b00;
     4'b0010 : y = 2'b01;
     4'b0100 : y = 2'b10;
     4'b1000 : y = 2'b11;
     default : y = 2'bxx;
endcase
*/
    if(w == 4'b0001) y = 2'b00;
    else if(w == 4'b0010) y = 2'b01;
    else if(w == 4'b0100) y = 2'b10;
    else if(w == 4'b1000) y = 2'b11;
    else y = 2'bxx;
end
endmodule
