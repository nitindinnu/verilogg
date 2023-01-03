module demux1to2_dut (
    I,s,y
);
    input I,s;
    output [0:1]y;

    assign y[0]= ~s&I;
    assign y[1]= s&I;
endmodule
