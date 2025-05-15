`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 11:25:45 AM
// Design Name: 
// Module Name: lab_5
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


module lab_5(
input logic [3:0]num,
input logic [2:0] s ,
output logic a,b,c,d,e,f,g,
output logic AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7
    );
     structlab5 seven_seg_decoder (
        .num(num),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g)
    );

    
     anode display_selector (
        .s(s),
        .AN0(AN0),
        .AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .AN4(AN4),
        .AN5(AN5),
        .AN6(AN6),
        .AN7(AN7)
    );

endmodule
