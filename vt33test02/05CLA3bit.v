module CLA3bit (
    a,b,g,p,cin,C,s
);
    input [2:0]a,b;
    input cin;
    inout [2:0]C;
    inout [2:0]g,p;
    // output cout;
    output [2:0]s;
    
    assign g[0]=b[0]&a[0]; 
    assign g[1]=b[1]&a[1];
    assign g[2]=b[2]&a[2];

    assign p[0]=b[0]^a[0];
    assign p[1]=b[1]^a[1];
    assign p[2]=b[2]^a[2];

    assign C[0]=g[0] | p[0]&cin;
    assign C[1]=g[1] | p[1]&C[0];
    assign C[2]=g[2] | p[2]&C[1];

    assign s[0]=p[0]^cin;
    assign s[1]=p[1]^C[0];
    assign s[2]=p[2]^C[1];
endmodule

module tb_cla3bit (
);
    reg [2:0]a,b;
    reg cin;
    wire [2:0]C;
    wire [2:0]g,p;
    // wire cout;
    wire [2:0]s;

    initial begin
        cin=0;
        a=3'b000;b=3'b111;
    end
    always #5 a=a+1'b1;
    always #5 b=b+1'b1;

    CLA3bit a1(
    a,b,g,p,cin,C,s
);
endmodule
