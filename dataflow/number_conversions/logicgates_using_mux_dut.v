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
