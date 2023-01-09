module mux2x1 (
    y,a,b,s
);
    input a,b,s;
    wire [3:1]w;
    output y;

    and(w[1],w[2],a);
    not(w[2],s);
    and(w[3],s,b);
    or(y,w[1],w[3]); //y=~sa+sb
endmodule