`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:14 09/01/2020 
// Design Name: 
// Module Name:    four_one 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module four_one(y,i0,i1,i2,i3,c,d);

output y;
input i0,i1,i2,i3,c,d;
wire y1_1,y1_2,y1_3,y1_4,c_,d_;

not(c_,c);
not(d_,d);

and(y1_1,c_,d_,i0);
and(y1_2,c_,d,i1);
and(y1_3,c,d_,i2);
and(y1_4,c,d,i3);

or(y,y1_1,y1_2,y1_3,y1_4);

endmodule
