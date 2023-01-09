module dut_decoder_2to4_by_shift (
    a,q
);
    input [1:0]a;
    output [3:0]q;

    assign q = 4'b0001 << a;
    // assign q[1]=q[0]<<1;
    // assign q[2]=q[1]<<1;
    // assign q[3]=q[2]<<1;
    
endmodule
