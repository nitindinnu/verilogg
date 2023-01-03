module mux5x1using2x1_dut (
    i,s,y,Y
);
    // parameter n=4;
    input [4:0]i;
    input [2:0]s;
    inout [2:0]y;
    output Y;

    assign y[0]= s[0]?i[1]:i[0];
    assign y[1]= s[0]?i[3]:i[2];

    assign y[2]= s[1]?y[1]:y[0];

    assign Y= s[2]?i[4]:y[2];
endmodule

