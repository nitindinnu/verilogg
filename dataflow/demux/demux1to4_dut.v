module demux1to4_dut (
    I,en,s,y
);
    input I,en;
    input [1:0]s;
    output [3:0]y;

    assign y[0]=~s[1]&~s[0]&I;
    assign y[1]=s[0]&~s[1]&I;
    assign y[2]=s[1]&~s[0]&I;
    assign y[3]=s[1]&s[0]&I;

endmodule
