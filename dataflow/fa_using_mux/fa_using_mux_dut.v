module fa_implementation_in_mux_dut (
    input a,b,c,output sum,carry
);
    assign sum= b?(a?c:~c):(a?~c:c);
    //assign =~a&~b&0 | ~a&b&c | a&~b&c | a&b
    assign carry= b?(a?1:c):(a?c:0);
endmodule

module fa_implementation_in_mux_tb (
    
);
  reg a,b,c; 
  wire sum,carry; 

  fa_implementation_in_mux_dut a1(a,b,c,sum,carry);
  initial begin
    a=0;b=0;c=0;
  end

  always #5 c=~c;
  always #10 b=~b;
  always #20 a=~a;
endmodule
