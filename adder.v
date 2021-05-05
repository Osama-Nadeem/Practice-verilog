module adder (
    a,b, // input
    c    // output
);
    input  wire a,b;
    output wire c;
    // input and output are by default wire
    assign c = a+b;     // when we use assign we would use = and nothing else like <
endmodule