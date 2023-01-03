module comparator_1bit_tb (
    
);
    reg a,b;
    wire L,G,E;

    comparator_1bit_dut gt(a,b,L,G,E);

    initial begin
        a=0;b=0 ;#10;
        a=0;b=1 ;#10;
        a=1;b=0 ;#10;
        $stop;
    end
endmodule
