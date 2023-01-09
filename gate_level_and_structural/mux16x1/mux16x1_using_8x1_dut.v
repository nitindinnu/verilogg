module mux16x1_using_8x1_dut (
    i,s,y16 //using two 8x1 for 16x1
);
    input [15:0]i;
    input [3:0]s;
    wire [1:0]w;
    output y16;

    mux8x1_dut first(i[7:0],s[2:0],w[0]);
    mux8x1_dut second(i[15:8],s[2:0],w[1]);

    mux2x1 third(y16,w[0],w[1],s[3]);
endmodule
