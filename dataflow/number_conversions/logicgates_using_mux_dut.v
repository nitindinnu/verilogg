module all_gates_from_2x1mux_dut (
    input a,b,s,output andd,nandd,orr,norr,xorr,xnorr,nott
);
    assign andd=s?b:0;
    assign nandd=s?~b:1;

    assign orr=s?1:b;
    assign norr=s?0:~b;

    assign xorr=s?~b:b;
    assign xnorr=s?b:~b;

    assign nott=s?0:1;
endmodule

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
