module comparator_1bit_dut (
   input a,b,output L,G,E
);
    assign L=~a & b;
    assign G=a & ~b;
    assign E=~(a^b);
endmodule
