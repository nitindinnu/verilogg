module mux8x1_dut (
    i,s,y8 //using mux2x1 calling by structural
);
    input [7:0]i;
    input [2:0]s;
    wire [5:0]w;
    output y8;

    mux2x1 first(w[0],i[0],i[1],s[0]);
    mux2x1 second(w[1],i[2],i[3],s[0]);
    mux2x1 third(w[2],i[4],i[5],s[0]);
    mux2x1 fourth(w[3],i[6],i[7],s[0]);

    mux2x1 fifth (w[4],w[0],w[1],s[1]);
    mux2x1 sixth (w[5],w[2],w[3],s[1]);

    mux2x1 seventh(y8,w[4],w[5],s[2]);
endmodule
