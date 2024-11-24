`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 05:30:01 PM
// Design Name: 
// Module Name: tp_fixed_point_multiplication
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


module tp_fixed_point_multiplication;
    localparam n1 = 5;  
    localparam m1 = 3;  
    localparam n2 = 5;  
    localparam m2 = 3;   

    logic [(n1 + m1)-1:0] x;  
    logic [(n2 + m2)-1:0] y;   
    logic [(n1 + n2 + m1 + m2)-1:0] Result;  

    
    Fixed_Point_Multiplication #(
        .n1(n1),
        .m1(m1),
        .n2(n2),
        .m2(m2)
    ) Dut (
        .x(x),
        .y(y),
        .Result(Result)
    );

    initial begin
        // Test 1
        x = 8'b01110000;  // 14.0 in Q5.3
        y = 8'b01001000;  // 2.25 in Q5.3
        #10; 
        $display("Test 1: x = %b, y = %b, Result = %b", x, y, Result);

        // Test 2
        x = 8'b00110000;  // 1.5 in Q2.3
        y = 8'b00011000;  // 0.75 in Q2.3
        #10; 
        $display("Test 2: x = %b, y = %b, Result = %b", x, y, Result);

        // Test 3
        x = 8'b10001000;  // 4.25 in Q2.3
        y = 8'b00100100;  // 1.125 in Q2.3
        #10; 
        $display("Test 3: x = %b, y = %b, Result = %b", x, y, Result);

        $finish;
    end

endmodule