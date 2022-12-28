module and_dut (
    a,b,y
);
    input a,b;
    output y;

    and(y,a,b);
    //assign y=a&b;
endmodule
