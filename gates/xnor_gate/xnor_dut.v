module xnor_dut (
    input a,b,c,d ,output y
);

xnor(y,a,b,c,d);
// assign y=~(a^b);
    
endmodule
 

