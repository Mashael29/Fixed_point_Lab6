`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 05:25:14 PM
// Design Name: 
// Module Name: TB_Fixed_point
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


module TB_Fixed_point;

    parameter n1 = 3; 
    parameter m1 = 5;
    parameter n2 = 5; 
    parameter m2 = 3;

    logic [(n1 + m1)-1:0] A;   
    logic [(n2 + m2) -1:0] B;
    logic [9:0] Result;

    Fixed_point_Adder #(
        .n1(n1),
        .n2(n2),
        .m1(m1),
        .m2(m2)
    ) Dut (
        .A(A),
        .B(B),
        .Result(Result)
    );

    initial begin
       
        A = 8'b01110111;  //3.71 in Q3.5 
        B = 8'b00101010;  //5.25 in Q5.3 

        #10; 
        $display("Test 1: A = %b, B = %b, Result = %b", A, B, Result);
        //Result: 8.96 in binary
        //Result = 0100011111
    end

endmodule
