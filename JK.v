`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:01 04/20/2015 
// Design Name: 
// Module Name:    JK 
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
module JK(
    input J,
    input K,
    input R,
    input S,
    input CLK,
    output Q,
	output QP
);
reg Q //Permite guardar el valor del registro.

if (R == 1) beign
	and (Q, 0, 0);	
end else if (S == 1) beign
	and (Q, 1, 1);
end else if (J == 1 && K == 0) beign
	and (Q, 1, 1);
end  else if (J == 0 && K == 1) beign
	and (Q, 0, 0);
end  else if (J == 1 && K == 1) beign
	not (Q, Q);
end

not (QP, Q);
endmodule
