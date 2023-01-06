module dut_priority_bit_gen (
    input a,b,c,output  Even,Odd
);
    assign Even= ~a&~b&~c | ~a&b&c |a&~b&c | a&b&~c;
    assign Odd = ~a&~b&c | ~a&b&~c | a&~b&~c | a&b&c;
endmodule
