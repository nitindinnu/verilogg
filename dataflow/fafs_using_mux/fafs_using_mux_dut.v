module fafs_using_mux_vector (
    a,b,c,s,w1,w2,w3,w4,w5,w6,sumdiff,carry,barrow,y0,y1
);

input a,b,c,s;
inout w1,w2,w3,w4,w5,w6,sumdiff,carry,barrow;
output y0,y1;

assign sumdiff=a^b^c;
assign w1=a&b;
assign w2=b&c;
assign w3=a&c;
assign w4=~a;
assign w5=w4&b;
assign w6=w4&c;
assign carry=w1|w2|w3;
assign barrow=w2|w5|w6;
assign y0= s?sumdiff:sumdiff;
assign y1= s?barrow:carry;

    
endmodule
