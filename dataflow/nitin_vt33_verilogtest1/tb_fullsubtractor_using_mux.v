module fs_implementation_in_mux_tb (
    
);
  reg a,b,c; 
  wire diff,barrow; 

  fs_implementation_in_mux_dut a1(a,b,c,diff,barrow);
  initial begin
    a=0;b=0;c=0;
  end

  always #5 c=~c;
  always #10 b=~b;
  always #20 a=~a;
endmodule


