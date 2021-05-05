`timescale 1ns/1ns 
module fulladder_tb;
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,fulladder_tb);
    end

    reg a_tb,b_tb,c_in_tb;
    wire xor1_out,xor2_out,and1_out,and2_out,sum_tb,c_out_tb;

    halfadder halfadder1(
        .a(a_tb),
        .b(b_tb),
        .sum(xor1_out),
        .c(and1_out)
    );

    halfadder halfadder2(
        .a(xor1_out),
        .b(c_in_tb),
        .sum(xor2_out),
        .c(and2_out)
    );
    assign sum_tb = xor2_out;
    assign c_out = and1_out | and2_out;

    initial begin
        a_tb = 1'b0;
        b_tb = 1'b0;
        c_in_tb = 1'b0;
        #5
        a_tb = 1'b0;
        b_tb = 1'b1;
        c_in_tb = 1'b0;
        #5
        a_tb = 1'b1;
        b_tb = 1'b0;
        c_in_tb = 1'b0;
        #5
        a_tb = 1'b1;
        b_tb = 1'b1;
        c_in_tb = 1'b0;
        #5
        a_tb = 1'b0;
        b_tb = 1'b0;
        c_in_tb = 1'b1;
        #5
        a_tb = 1'b0;
        b_tb = 1'b1;
        c_in_tb = 1'b1;
        #5
        a_tb = 1'b1;
        b_tb = 1'b0;
        c_in_tb = 1'b1;
        #5
        a_tb = 1'b1;
        b_tb = 1'b1;
        c_in_tb = 1'b1;
        #40
       #40
       $finish;
    end
endmodule 
    
