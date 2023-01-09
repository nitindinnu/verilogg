module mux16x1_dut (
    i,s,y16  
); //using 2x1 mux
    input [15:0]i;
    input [3:0]s;
    wire [13:0]w;
    output y16;  

    mux2x1 a1(w[0],i[0],i[1],s[0]);
    mux2x1 a2(w[1],i[2],i[3],s[0]);
    mux2x1 a3(w[2],i[4],i[5],s[0]);
    mux2x1 a4(w[3],i[6],i[7],s[0]);
    mux2x1 a5(w[4],i[8],i[9],s[0]);
    mux2x1 a6(w[5],i[10],i[11],s[0]);
    mux2x1 a7(w[6],i[12],i[13],s[0]);
    mux2x1 a8(w[7],i[14],i[15],s[0]);

    mux2x1 a9(w[8],w[0],w[1],s[1]);
    mux2x1 a10(w[9],w[2],w[3],s[1]);
    mux2x1 a11(w[10],w[4],w[5],s[1]);
    mux2x1 a12(w[11],w[6],w[7],s[1]);

    mux2x1 a13(w[12],w[8],w[9],s[2]);
    mux2x1 a14(w[13],w[10],w[11],s[2]);

    mux2x1 a15(y16,w[12],w[13],s[3]);
endmodule


