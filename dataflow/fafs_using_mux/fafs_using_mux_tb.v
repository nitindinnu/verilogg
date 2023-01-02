module fafs_using_mux_vector_tb (
    
);
  reg a,b,c,s;
  wire w1,w2,w3,w4,w5,w6,sumdiff,carry,barrow,y0,y1;  

 fafs_using_mux_vector a1(a,b,c,s,w1,w2,w3,w4,w5,w6,sumdiff,carry,barrow,y0,y1);

 initial begin
    a=0;b=0;c=0;
    s=0;
 end
 always #5 c=~c; 
 always #10 b=~b; 
 always #20 a=~a; 
 always #40 s=~s;
endmodule
