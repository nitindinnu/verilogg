module full_sub (
    output out,diff,input a,b,cin
);
    wire [2:0]n ;
    xor a1(out, a,b,cin);
    and b1(n[0],a,b);
    and c1(n[1],b,c);
    and d1(n[2],c,a);
    or e1(diff, n[0],n[1],n[2]);
endmodule

module bit4_fs (
    d,b0,a,b,bin
);
    output [3:0]d;
    output b0;
    wire [2:0]bi;
    input [3:0]a,b;
    input bin;

    full_sub sub1(d[0],bi[0],   a[0],~b[0],bin);
    full_sub sub(d[1],bi[1],    a[1],~b[1],bi[0]);
    full_sub sub3(d[2],bi[2],   a[2],~b[2],bi[1]);
    full_sub sub4(d[3],b0,      a[3],~b[3],bi[2]);
endmodule

module bit4_s_tb (
    
);

    wire [3:0]d;
    wire b0;
    reg [3:0]a,b;
    reg bin;
    
    initial begin
        bin=1;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
        a=$random;b=$random;#10;
    end
    
    bit4_fs a1(
    d,b0,a,b,bin
);

endmodule
