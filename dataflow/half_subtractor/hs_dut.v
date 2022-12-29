
module hs_dut (
    output diff,ba,input a,b
);
  assign diff=a^b;
  assign ba=((~a)&b) ;
endmodule

