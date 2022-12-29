module mux4x1_using_terinary_dut (
    output y,input i0,i1,i2,i3,s0,s1
);
    assign y = s1 ? (s0 ? d : c) : (s0 ? b : a);
    
endmodule
