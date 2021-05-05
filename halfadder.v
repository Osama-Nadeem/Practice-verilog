module  halfadder (
    a,b,c,sum
);
    input wire a,b;
    output wire c,sum;
    
    assign sum = a ^ b;
    assign c = a & b;
endmodule