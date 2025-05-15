module structlab5(
    input logic [3:0] num,
    output logic  a, b, c, d, e, f, g
);
    
    wire w= num[0];
    wire  x= num[1];
    wire  y= num[2];
    wire  z= num[3];
    assign a = (~w&~x&~y&z)|(~w&x&~y&~z)|(w&x&~y&z)|(w&~x&y&z);
    assign b = (~w&x&~y&z)|(w&y&z)|(x&y&~z)|(w&x&~z);
    assign c = (~w&~x&y&~z)|(w&x&y)|(w&x&~z);
    assign d = (~w&~x&~y&z)|(~w&x&~y&~z)|(w&y&z)|(w&~x&y&~z);
    assign e = (~w&z)|(~w&x&~y)|(w&~x&~y&z);
    assign f = (~w&~x&z)|(~w&~x&y)|(~w&y&z)|(w&x&~y&z);
    assign g = (~w&~x&~y)|(~w&x&y&z)|(w&x&~y&~z);
    
endmodule
