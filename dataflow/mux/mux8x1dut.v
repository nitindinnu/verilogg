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
