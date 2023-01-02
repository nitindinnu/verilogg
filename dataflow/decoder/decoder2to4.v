module decoder2to4_dut (
    e,b,a,d
);
    input e,b,a;
    output [3:0]d;

    assign d[0]=e&(~b)&(~a);
    assign d[1]=e&(~b)&(a);
    assign d[2]=e&(b)&(~a);
    assign d[3]=e&b&a;

endmodule

