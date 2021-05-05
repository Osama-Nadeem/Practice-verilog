module adder_tb;
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,adder_tb); 
    end

    reg a_tb, b_tb;
    wire c_tb;

    adder adder1(
        .a(a_tb),
        .b(b_tb),
        .c(c_tb)
    );

    initial begin
        a_tb = 1'b1;
        b_tb = 1'b0;
    end

endmodule