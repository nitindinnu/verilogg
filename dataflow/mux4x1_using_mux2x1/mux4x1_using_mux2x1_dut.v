module mux4x1_using_mux2x1 (
    input i0,i1,i2,i3,s0,s1,output y1,y2,y3
);

assign y1=(s0?i0:i1);
assign y2=(s0?i2:i3);
assign y3=(s1?y1:y2);
    
endmodule
