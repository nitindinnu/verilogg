module tb_universal_gates_using_mux (
    
);
    reg a,b;
    wire nandd,norr;
    dut_universal_gates_using_mux a1(a,b,nandd,norr);

    initial begin
        #5
        a=0;b=0;#5;
        a=0;b=1;#5;
        a=1;b=0;#5;
        a=1;b=1;#5;

        $stop;
        
    end
    
endmodule
