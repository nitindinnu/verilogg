module dut_carry_look_ahead_adder_4bit (
    a,b,g,p,cin,C,s,cout
);
    input [3:0]a,b;
    input cin;
    inout [2:0]C;
    inout [3:0]g,p;
    output cout;
    output [3:0]s;

    assign g[0]=b[0]&a[0];
    assign g[1]=b[1]&a[1];
    assign g[2]=b[2]&a[2];
    assign g[3]=b[3]&a[3];

    assign p[0]=b[0]^a[0];
    assign p[1]=b[1]^a[1];
    assign p[2]=b[2]^a[2];
    assign p[3]=b[3]^a[3];

    assign C[0]=g[0] | p[0]&cin;
    assign C[1]=g[1] | p[1]&C[0];
    assign C[2]=g[2] | p[2]&C[1];
    assign cout =g[3] | p[3]&C[2];

    assign s[0]=p[0]^cin;
    assign s[1]=p[1]^C[0];
    assign s[2]=p[2]^C[1];
    assign s[3]=p[3]^C[2];

endmodule
