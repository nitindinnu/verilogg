module 8x3 (
    i,y
);
    input [7:0]i;
    output [3:0]y;  

    encoder4x2_dut first(i[3:0],y[1:0]);
    encoder4x2_dut second(i[7:4],y[3:2]);
    encoder4x2_dut third();
endmodule
