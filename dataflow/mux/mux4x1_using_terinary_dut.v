module mux4x1_using_terinary_dut (
    output y,input a,b,c,d,s0,s1
);
    assign y = s0 ? (s1 ? d : c) : (s1 ? b : a);
    
endmodule
