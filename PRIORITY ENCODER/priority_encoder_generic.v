`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 12:52:06
// Design Name: 
// Module Name: priority_encoder_generic
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


module priority_encoder_generic
#(parameter n = 4)(
input [n-1:0] w,
output z,
output reg [$clog2(n)-1 : 0] y
    );
    
 assign z = |w;
 
 integer k;
 always @(w)
 begin
    y = 'bx;
    for (k=0; k<n; k=k+1 )
    begin
        if(w[k])
            y = k;
    end
 end
endmodule
