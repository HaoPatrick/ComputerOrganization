`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:08 03/12/2017 
// Design Name: 
// Module Name:    GraphicDecoder 
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
module GraphicDecoder(
input [31:0] Disp_num,	
output [63:0] segment
    );


assign segment =
   {Disp_num[30],  Disp_num[15],  Disp_num[11],  Disp_num[23],  Disp_num[31],Disp_num[22],   Disp_num[10],  Disp_num[3], 
        Disp_num[28],  Disp_num[14],  Disp_num[9],  Disp_num[21],  Disp_num[29],Disp_num[20],   Disp_num[8],  Disp_num[2], 
        Disp_num[26],  Disp_num[13],  Disp_num[7],  Disp_num[19],  Disp_num[27],Disp_num[18],   Disp_num[6],  Disp_num[1], 
        Disp_num[24],  Disp_num[12], Disp_num[5],  Disp_num[17],  Disp_num[25],Disp_num[16],  Disp_num[4],  Disp_num[0],

	Disp_num[30],  Disp_num[15],  Disp_num[11],  Disp_num[23],  Disp_num[31],Disp_num[22],   Disp_num[10],  Disp_num[3], 
        Disp_num[28],  Disp_num[14],  Disp_num[9],  Disp_num[21],  Disp_num[29],Disp_num[20],   Disp_num[8],  Disp_num[2], 
        Disp_num[26],  Disp_num[13],  Disp_num[7],  Disp_num[19],  Disp_num[27],Disp_num[18],   Disp_num[6],  Disp_num[1], 
        Disp_num[24],  Disp_num[12], Disp_num[5],  Disp_num[17],  Disp_num[25],Disp_num[16],  Disp_num[4],  Disp_num[0]};

endmodule
