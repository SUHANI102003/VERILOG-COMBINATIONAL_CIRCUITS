`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 12:51:23
// Design Name: 
// Module Name: BCD_adder
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


module BCD_adder(
input [3:0] a,b,
input cin,
output [3:0] sum,
output cout
    );
    
 wire cout_a, cout_b;  // from 1st & 2nd adder cout
 wire [3:0] sumb; // from 1st adder sum to connect to 2nd adder input 
 wire [1:0] connector; // to connect with or gate
 
adder A0 (a, b, cin, sumb, couta);
adder A1 ({1'b0, coutb, coutb, 1'b0}, sumb, cin, sum, cout);

and G1 (connector[0], sumb[2], sumb[3]), G2 (connector[1], sumb[1], sumb[3]);
or G3 (coutb, couta, connector[1], connector[0]);
endmodule
