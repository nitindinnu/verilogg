module fs_dut (
    output diff,barr,input a,b,c
);
  assign diff=a^b^c;
  assign barr=((~a)&b|(~a)&c|b&c ) ;
endmodule
