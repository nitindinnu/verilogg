module and_dut_param (
    y,a,b;
    parameter n =32 ;
);
    input [n-1:0]a,b;
    output y;

    and(y,a,b);
endmodule
