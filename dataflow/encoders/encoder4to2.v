module encoder4to2_dut (
    i,a
);
    input [3:0]i;
    output [1:0]a;

    assign a[0]=i[3]|i[1];
    assign a[1]=i[3]|i[2];

endmodule
