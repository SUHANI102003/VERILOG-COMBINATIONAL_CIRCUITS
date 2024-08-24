`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 22:14:35
// Design Name: 
// Module Name: MUX_21
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


module MUX_21(
    input [1:0] i,
    input sel,
    output f
    );
//**************************
// DATAFLOW MODELLING
//assign f = sel ? i1 : i0;
//         'OR'
//assign f = (~sel & i0) | (sel & i1);

//**************************
// BEHAVIORAL MODELLING
/*
always @(*)
begin
if(sel)
 f=i1;
else
f=i0;
end

       OR 
       
 always@(*)
  begin
   case(sel)
   1 : f=i1;
   0 : f=i0;
   endcase
  end
 */ 
//****************************
// STRUCTURAL MODELLING

wire t1,t2,t3;
not N1 (t3,sel);
and a0 (t1,t3,i[0]), a1 (t2,sel,i[1]);
or O1 (f,t1,t2);

endmodule
