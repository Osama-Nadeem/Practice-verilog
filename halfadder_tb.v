`timescale 1ns/1ns 
//`include "halfadder.v"
module halfadder_tb;
    initial begin
        $dumpfile("ca.vcd");
        $dumpvars(0,halfadder_tb); 
    end
    
    reg  a_tb,b_tb;
    wire sum_tb,c_tb;

    halfadder halfadder1(
        .a(a_tb),
        .b(b_tb),
        .sum(sum_tb),
        .c(c_tb)
        
    );

    initial begin
       a_tb = 1'b0;
       b_tb = 1'b0;
       #5
       a_tb = 1'b0;
       b_tb = 1'b1;
       #5
       a_tb = 1'b1;
       b_tb = 1'b0;
       #5
       a_tb = 1'b1;
       b_tb = 1'b1;
       #40
       $finish;
    end
endmodule 