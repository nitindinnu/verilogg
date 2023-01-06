module dut_comp_4bit_u_2bit (
    a,b,Lesser,Greater,Equal,L,G,E
);
    input [3:0]a,b;
    inout [1:0]L,G,E;
    output Lesser,Greater,Equal;

    assign E[1]=(a[3]~^b[3]) & (a[2]~^b[2]);
    assign E[0]=(a[1]~^b[1]) & (a[0]~^b[0]);

    assign L[1]= ~a[3] & b[3] | (a[3]~^b[3]) & (~a[2] & b[2]);
    assign L[0]= ~a[1] & b[1] | (a[1]~^b[1]) & (~a[0] & b[0]);

    assign G[1]=(a[3] & ~b[3]) | (a[3]~^b[3]) & (a[2] & ~b[2]);
    assign G[0]=(a[1] & ~b[1]) | (a[1]~^b[1]) & (a[0] & ~b[0]);

    assign Lesser = L[1] | (E[1]&L[0]);
    assign Greater = G[1] | (E[1]&G[0]);
    assign Equal= E[1]&E[0];
endmodule
