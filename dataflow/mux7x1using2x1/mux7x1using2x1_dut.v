module mux7x1using2x1_dut (
    i,s,y,Y
);
    input [6:0]i;
    input [2:0]s;
    inout [4:0]y;
    output Y;

    assign y[0]=s[0]?i[1]:i[0];
    assign y[1]=s[0]?i[3]:i[2];
    assign y[2]=s[0]?i[5]:i[4];

    assign y[3]=s[1]?y[1]:y[0];
    assign y[4]=s[1]?i[6]:y[2];

    assign Y=s[2]?y[4]:y[3];
endmodule
