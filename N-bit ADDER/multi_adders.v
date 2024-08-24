`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 20:06:35
// Design Name: 
// Module Name: multi_adders
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


module multi_adders(
input [15:0] x,y,
output [15:0] s_xy,
output c_out_xy,

input [33:0] a,b,
output [33:0] s_ab,
output c_out_ab
    );
/*    
adder_Nbit adder_16 (.A(x),   // this will only use 8 bits of rca and ignore oyhers
                     .B(y),
                     .carry_in(0),
                     .sum(s_xy),
                     .carry_out(c_out_xy)
                     );
                     */
// so we define a parameter

adder_Nbit #(.N(16)) adder_16 (.A(x),   
                     .B(y),
                     .carry_in(0),
                     .sum(s_xy),
                     .carry_out(c_out_xy)
                     );
                     
adder_Nbit #(.N(34)) adder_34 (.A(a),   
                     .B(b),
                     .carry_in(0),
                     .sum(s_ab),
                     .carry_out(c_out_ab)
                     );
endmodule
