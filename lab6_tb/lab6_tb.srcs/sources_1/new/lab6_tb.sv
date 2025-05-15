`timescale 1ns / 1ps

module lab6_tb;

    logic clk, reset, write;
    logic [3:0] num;
    logic [2:0] sel;
    logic [6:0] segments;
    logic [7:0] anode;

    lab6 DUT (
        .clk(clk),
        .reset(reset),
        .write(write),
        .num(num),
        .sel(sel),
        .segments(segments),
        .anode(anode)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        write = 0;
        num = 4'b0000;
        sel = 3'b000;
        
        #10 reset = 0;
        
        @(posedge clk);
        write = 1;
        sel = 3'b000; num = 4'h1;
        @(posedge clk);
        sel = 3'b001; num = 4'h3;
        @(posedge clk);
        sel = 3'b010; num = 4'h5;
        @(posedge clk);
        sel = 3'b011; num = 4'h7;
        @(posedge clk);
        sel = 3'b100; num = 4'h8;
        @(posedge clk);
        sel = 3'b101; num = 4'h9;
        @(posedge clk);
        sel = 3'b110; num = 4'hA;
        @(posedge clk);
        sel = 3'b111; num = 4'hF;
        
        @(posedge clk);
        write = 0;
        sel = 3'b000;
        
        repeat (8) begin
            @(posedge clk);
            #5;
            $display("Time=%0t | sel=%b | segments=%b | anode=%b", $time, sel, segments, anode);
            sel = sel + 1;
        end
        
        #20;
        $stop;
    end
    
endmodule