module encoder4to2_dut (
    i,y
);
    input [3:0]i;
    output [1:0]y;

    or(y[1],i[2],i[3]);
    or(y[0],i[1],i[3]);
endmodule
