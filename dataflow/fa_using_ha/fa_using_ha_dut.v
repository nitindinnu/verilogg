module fa_using_ha (
    input a,b,c, output w1,w2,w3,sum,carry
);

assign w1=a^b;
assign w2=a&b;
assign w3=w1&c;
assign sum=w1^c;
assign carry=w2|w3;
    
endmodule
