module comparator_3bit_dut (
    a,b,L,G,E,Lesser,Greater,Equal
);
//3bit magnitude comparator using 1bit comparator

input [2:0]a,b;
inout [2:0]L,G,E;
output Lesser,Greater,Equal;

assign L[0]=(~a[0])&b[0];
assign L[1]=(~a[1])&b[1];
assign L[2]=(~a[2])&b[2];

assign G[0]=(~b[0])&a[0];
assign G[1]=(~b[1])&a[1];
assign G[2]=(~b[2])&a[2];

assign E[0]=~(a[0]^b[0]);
assign E[1]=~(a[1]^b[1]);
assign E[2]=~(a[2]^b[2]);

assign Lesser= (L[2] | (E[2]&L[1]) | (E[2]&E[1]&L[0]));
assign Greater= (G[2] | (E[2]&G[1]) | (E[2]&E[1]&G[0]));
assign Equal= (E[2] & E[1] & E[0]);
    
endmodule

