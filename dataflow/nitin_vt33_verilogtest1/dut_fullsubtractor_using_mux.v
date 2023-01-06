module fs_implementation_in_mux_dut (
    input a,b,c,output diff,barrow
);
    assign diff= b?(a?c:~c):(a?~c:c);
    assign barrow= b?(a?c:1):(a?0:c);
endmodule


