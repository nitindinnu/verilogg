module fs_dut (
    output diff,barr,input a,b,c
);
  assign diff=a^b^c;
  assign barr=((~a)&b|(~a)&c|b&c ) ;
  // assign barr = (~a&b) | (~(a^b)&c);
endmodule

module tb_fs (
    
);
    reg a,b,c;
    wire diff,barr;

    fs_dut a1(diff,barr,a,b,c);
    initial begin
        a=0;b=0;c=0;#10;
        a=0;b=0;c=1;#10;
        a=0;b=1;c=0;#10;
        a=0;b=1;c=1;#10;
        a=1;b=0;c=0;#10;
        a=1;b=0;c=1;#10;
        a=1;b=1;c=0;#10;
        a=1;b=1;c=1;#10;
    end
endmodule
