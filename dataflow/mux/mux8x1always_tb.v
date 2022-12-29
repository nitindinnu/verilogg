module mux8x1always_tb (
    
);
    reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
    wire y0,y1,y2,y3,y4,y5,y;

    mux8x1_dut test(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y0,y1,y2,y3,y4,y5,y);

    initial begin
        s0=0;s1=0;s2=0;  i0=1;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;
        end

    always #2 i7=~i7;
    always #4 i6=~i6;
    always #8 i5=~i5;
    always #16 i4=~i4;
    always #32 i3=~i3;
    always #64 i2=~i2;
    always #128 i1=~i1;
    always #256 i0=~i0;

    always #2 s2=~s2;
    always #4 s1=~s1;
    always #8 s0=~s0;
endmodule
