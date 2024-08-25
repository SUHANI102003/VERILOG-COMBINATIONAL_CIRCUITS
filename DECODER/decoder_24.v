`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 20:56:55
// Design Name: 
// Module Name: decoder_24
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


module decoder_24(
    input en,
    input [1:0] in,
    output [0:3] y
    );
    
 //**********************************
 // DATAFLOW MODELLING
 /*
 assign y[0] = en & ~in[0] & ~in[1];
 assign y[1] = en & in[0] & ~in[1];
 assign y[2] = en & ~in[0] & in[1];
 assign y[3] = en & in[0] & in[1];
 */
 //**************************************
 //STRUCTURAL MODELLING
 wire t1,t2,t3;
 not n1 (t1,in[0]), n2 (t2,in[1]);
 and a1 (y[0], en, t1,t2), a2 (y[1], en, t2, in[0]),
     a3 (y[2], en, in[1], t1), a4 (y[3], en, in[0], in[1]);

//*******************************************
 
 // BEHAVIORAL MODELLING
 /*
 always@(*)
 begin
    if(en)
        begin
             case(in)
                0 : y = 4'b1000;
                1 : y = 4'b0100;
                2 : y = 4'b0010;
                3 : y = 4'b0001;
                default : y = 4'b0000;
             endcase
        end
    else
        y = 4'b0000;
 end
*/
//*********************************************
 /*
 always @(*)
 begin
     y = 4'b0000; //default
     
    if(in == 2'b00)
        y = 4'b1000;
    else if (in == 2'b01)
       y = 4'b0100;
     else if (in == 2'b10)
       y = 4'b0010;
     else if (in == 2'b11)
       y = 4'b0001;
     else 
        y = 4'b0000;
 end
*/
 //**************************************************
 /*
 always @(*)
 begin
     y = 4'b0000; //default
     if (en)
     y[in] = 1'b1;
     else
     y = 4'b0000;
 end
 */
endmodule
