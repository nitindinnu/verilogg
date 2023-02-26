module mux8x1_dut (
    input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,output y0,y1,y2,y3,y4,y5,y
);
    assign y0=(s0?i1:i0);
    assign y1=(s0?i3:i2);
    assign y2=(s0?i5:i4);
    assign y3=(s0?i7:i6);

    assign y4=(s1?y1:y0);
    assign y5=(s1?y3:y2);

    assign y=(s2?y5:y4);
endmodule

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

module mux8x1_tb (
    
);
    reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
    wire y0,y1,y2,y3,y4,y5,y;

    mux8x1_dut test(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y0,y1,y2,y3,y4,y5,y);

    initial begin
        
        #10;
        // s0=0;s1=0;s2=0;  i0=1;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;#10;
        // s0=0;s1=0;s2=1;  i0=0;i1=1;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;#10;
        // s0=0;s1=1;s2=0;  i0=0;i1=0;i2=1;i3=0;i4=0;i5=0;i6=0;i7=0;#10;
        // s0=0;s1=1;s2=1;  i0=0;i1=0;i2=0;i3=1;i4=0;i5=0;i6=0;i7=0;#10;
        // s0=1;s1=0;s2=0;  i0=0;i1=0;i2=0;i3=0;i4=1;i5=0;i6=0;i7=0;#10;
        // s0=1;s1=0;s2=1;  i0=0;i1=0;i2=0;i3=0;i4=0;i5=1;i6=0;i7=0;#10;
        // s0=1;s1=1;s2=0;  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=1;i7=0;#10;
        // s0=1;s1=1;s2=1;  i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=1;#10;
        // $monitor("s0=%0b,s1=%0b,s2=%0b,y=%0b",s0,s1,s2,y);
        s0=0;s1=0;s2=0;  i0=1;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;#10;
        s0=0;s1=0;s2=1;  i0=0;i1=1;#10;
        s0=0;s1=1;s2=0;  i1=0;i2=1;#10;
        s0=0;s1=1;s2=1;  i2=0;i3=1;#10;
        s0=1;s1=0;s2=0;  i3=0;i4=1;#10;
        s0=1;s1=0;s2=1;  i4=0;i5=1;#10;
        s0=1;s1=1;s2=0;  i5=0;i6=1;#10;
        s0=1;s1=1;s2=1;  i6=0;i7=1;#10;
        $stop;
    end
endmodule

