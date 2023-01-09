module dut_priorityencoder_4to2 (
    d,y
);
    input [3:0]d;
    output [1:0]y;

    assign y[0]=d[0]| (~d[1]&d[2]) ;
    assign y[1]=d[0]| d[1];
endmodule
