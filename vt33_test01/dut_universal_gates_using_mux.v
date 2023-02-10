module dut_universal_gates_using_mux (
    input a,b,output nandd,norr
);
    assign nandd= ~a&1 | a&~b;
    
    
    assign norr=~a&~b |a&0;
endmodule
