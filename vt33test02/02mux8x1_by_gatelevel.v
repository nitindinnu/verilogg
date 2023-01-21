module mux8x1_dut (
    i,s,y
);
    input [7:0]i;
    input [2:0]s;
    wire a,b,c,d,e,f,g,h;
    output y;

    not(s0bar,s[0]);
    not(s1bar,s[1]);
    not(s2bar,s[2]);

    and(a,s0bar,s1bar,s2bar,i[0]);
    and(b,s0bar,s1bar,s[2],i[1]);
    and(c,s0bar,s[1],s2bar,i[2]);
    and(d,s0bar,s[1],s[2],i[3]);
    and(e,s[0],s1bar,s2bar,i[4]);
    and(f,s[0],s1bar,s[2],i[5]);
    and(g,s[0],s[1],s2bar,i[6]);
    and(h,s[0],s[1],s[2],i[6]);

    or(y,a,b,c,d,e,f,g,h);
endmodule

module mux8x1_tb (
);
    reg [7:0]i;
    reg [2:0]s;
    wire y;

    initial begin
        // #5;
        i=8'b11001011;
        s=3'b000;
    end
    always #5 s=s+1'b1;

    mux8x1_dut a1(
    i,s,y
);
endmodule
