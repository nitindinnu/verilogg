module dut_decoder_4to16_by_shift (
    a,q
);
    input [3:0]a;
    output [15:0]q;

    assign q = 16'b0000000000000001 << a;
    
endmodule
