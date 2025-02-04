module project2(
       input   a,
       input   b,
       input   c,
       output  x,
       output  y
);

       wire or_out;
       wire and_out;
       wire not_out;
       wire xor_out;
       wire nand_out;
    
       assign not_out = ~c;
       assign or_out = a | b;
       assign x = not_out ^ or_out;
       assign and_out = a & b;
       assign nand_out = ~and_out;
       assign xor_out = nand_out ^ or_out;
       assign y = or_out & xor_out;

endmodule
