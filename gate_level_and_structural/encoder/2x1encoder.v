module encoder4x2_dut (
    i,y
);
    input [1:0]i;
    output y;

    not(y,i[0]);
endmodule
