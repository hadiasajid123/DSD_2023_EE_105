module anode(
    input  logic [2:0] s,  
    output logic AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7  
);

    assign AN0 = ~(~s[2] & ~s[1] & ~s[0]);
    assign AN1 = ~( s[2] & ~s[1] & ~s[0]);
    assign AN2 = ~(~s[2] &  s[1] & ~s[0]);
    assign AN3 = ~( s[2] &  s[1] & ~s[0]);
    assign AN4 = ~(~s[2] & ~s[1] &  s[0]);
    assign AN5 = ~( s[2] & ~s[1] &  s[0]);
    assign AN6 = ~(~s[2] &  s[1] &  s[0]);
    assign AN7 = ~( s[2] &  s[1] &  s[0]);

endmodule