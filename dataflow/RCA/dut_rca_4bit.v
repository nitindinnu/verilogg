module dut_rca_4bit (
    a,b,c,s,cin,cout
);
    input [3:0] a,b;
    input cin;
    // input [0:0]c;
    inout [3:1]c;
    output cout;
    // output [4:4]c;
    output [3:0]s;

    assign s[0]=a[0]^b[0]^cin;
    // assign s[0]=a[0]^b[0]^c[0];
    assign s[1]=a[1]^b[1]^c[1];
    assign s[2]=a[2]^b[2]^c[2];
    assign s[3]=a[3]^b[3]^c[3];

    assign c[1]=a[0]&b[0] | b[0]&cin | cin&a[0];
    // assign c[1]=a[0]&b[0] | b[0]&c[0] | c[0]&a[0];
    assign c[2]=a[1]&b[1] | b[1]&c[1] | c[1]&a[1];
    assign c[3]=a[2]&b[2] | b[2]&c[2] | c[2]&a[2];
    assign cout=a[3]&b[3] | b[3]&c[3] | c[3]&a[3];
    // assign c[4]=a[3]&b[3] | b[3]&c[3] | c[3]&a[3];

endmodule
