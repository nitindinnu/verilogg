module tb_mux4x1_using_mux2x1 (
    
);
reg i0,i1,i2,i3,s0,s1;
wire y1,y2,y3; 

mux4x1_using_mux2x1 test(i0,i1,i2,i3,s0,s1,y1,y2,y3);
initial begin
    i0=0;i1=0;i2=0;i3=0;
    s0=0;s1=0;
end
always #2 s1=~s1;
always #4 s0=~s0;

always #2 i3=~i3;
always #4 i2=~i2;
always #8 i1=~i1;
always #16 i0=~i0;
endmodule
