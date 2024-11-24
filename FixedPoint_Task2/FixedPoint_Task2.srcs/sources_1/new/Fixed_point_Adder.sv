`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 04:15:04 PM
// Design Name: 
// Module Name: Fixed_point_Adder
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


module Fixed_point_Adder #
(
parameter n1=3,
parameter n2=5,
parameter m1=5,
parameter m2=3,
localparam max_m = (m1 > m2) ? m1 : m2,
localparam max_n = (n1 > n2) ? n1 : n2

) 
(
input logic [(n1+m1)-1:0] A,
input logic [(n2+m2)-1:0] B, 
output logic [max_m + max_n-1:0] Result
);

    logic [(max_n + max_m)-1:0] Sum_A;
    logic [(max_n + max_m)-1:0] Sum_B;

    assign Sum_A = A << (max_m - m1) ;
    assign Sum_B = B << (max_m - m2) ;

    assign Result = Sum_A + Sum_B;
    
endmodule 