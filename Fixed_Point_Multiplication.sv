`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 04:32:39 PM
// Design Name: 
// Module Name: Fixed_Point_Multiplication
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


module Fixed_Point_Multiplication#(

    parameter n1 = 5,  
    parameter m1 = 3,  
    parameter n2 = 5,  // Number of all bit
    parameter m2 = 3  
)(
    input [n1+m1-1:0] x,  
    input [n2+m2-1:0] y,  
     
    output logic [(n1 + n2 + m1 + m2)-1:0] Result
);
    always @(*) begin

        Result = x * y;
    end
endmodule
