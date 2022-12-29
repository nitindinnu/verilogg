module fs_using_hs_tb (
   
);
reg a,b,c;
wire diff,barr;

fs_using_hs_dut a1(diff,barr,a,b,c);
initial begin
    a=0;b=0;c=0;
end
   always #5 c=~c;
   always #10 b=~b;
   always #15 a=~a;
endmodule
