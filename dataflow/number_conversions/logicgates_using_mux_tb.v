module all_gates_from_2x1mux_tb (
    
);
    reg a,b,s;
    wire andd,nandd,orr,norr,xorr,xnorr,nott;
    all_gates_from_2x1mux_dut a1(a,b,s,andd,nandd,orr,norr,xorr,xnorr,nott);

    initial begin
        #5
        s=0;a=0;b=0;#5;
        a=0;b=1;#5;
        a=1;b=0;#5;
        a=1;b=1;#5;

        s=1;a=0;b=0;#5;
        a=0;b=1;#5;
        a=1;b=0;#5;
        a=1;b=1;#5;
        $stop;
    end
endmodule
