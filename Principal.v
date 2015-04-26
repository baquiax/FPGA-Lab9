`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:43:24 04/20/2015 
// Design Name: 
// Module Name:    Principal 
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
module Principal(
    input SW0,
    input BTN0,
    input V,
    output A,
    output B
    );
wire w1, w2, w3, jk1Q, jk2Q, jk2QP;

//Primer NOR Arriba hacia abajo [U2A]
or(w1, jk2QP, SW0);
not(w1, w1);

//AND [U3B]
and(w2, jk2QP, SW0);

//XOR [U4A]
xor(w3, x, jk1Q);

//[U1A]
JK jk1(w1, w2, V, V, BTN0, jk1Q, jk1QP);

//[U1B]
JK jk2(w3, w3, V, V, BTN0, jk2Q, jk2QP);

//A Y B
or (A, jk1Q, 0);
or (B, jk2Q, 0);

endmodule
