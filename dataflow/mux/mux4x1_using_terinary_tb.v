module mux4x1_terenary (
    
);
   reg a,b,c,d,s0,s1;
   wire y; 

   mux4x1_using_terinary_dut a1(y,a,b,c,d,s0,s1);
   initial begin
    #10
    s0=0;s1=0; a=1;b=0;c=0;d=0;#10;
    s0=0;s1=1; a=0;b=1;#10;
    s0=1;s1=0; b=0;c=1;#10;
    s0=1;s1=1; c=0;d=1;#10;
   end
endmodule
