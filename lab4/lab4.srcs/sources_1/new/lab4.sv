module lab4(
      input  wire [1:0]a ,
      input  wire [1:0]b , 
      output wire red ,   
      output wire green ,  
      output wire blue     
);

      wire a1;
      wire a0;
      wire b1;
      wire b0;
      assign a1 = a[1];
      assign a0 = a[0];
      assign b1 = b[1];
      assign b0 = b[0];
      assign blue = (~a1&b1)|(a1&~b1)|(a0&~b0)|(~a0&b0);
      assign green = (~a1&~a0)|(b1&b0)|(~a1&b0)|(~a1&b1)|(~a0&b1);
      assign red = (~b1&~b0)|(a1&a0)|(a0&~b1)|(a1&~b1)|(a1&~b0);

endmodule