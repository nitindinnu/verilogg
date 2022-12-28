module nand_gate (
    output Y, input A, B
);
    //gate-level
    // wire Yd;
    // and(Yd, A, B);
    // not(Y, Yd);  

    //data flow
    assign Y = ~(A & B); 
endmodule
