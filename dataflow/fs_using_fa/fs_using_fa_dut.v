module fs_using_fa_dut (
    output diff,FSCout,w1,w2,w3,w4,w5,w6,input a,b,c
);
    assign sum=a^b^c;
    assign w1=a&b;
    assign w2=b&c;
    assign w3=c&a;
    assign FACout=w1|w2|w3;
    assign w4=(~a);
    assign w5=w4&b;
    assign w6=w4&c;
    assign diff=sum;
    assign FSCout= w2| w5|w6; 

endmodule
