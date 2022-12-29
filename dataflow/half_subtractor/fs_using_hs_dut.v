module fs_using_hs_dut (//https://www.electrically4u.com/wp-content/uploads/2020/07/image-23.png
    output diff,barr,input a,b,c, inout w1,w2,w3,w4,w5
);
    assign w1=a^b;
    assign w2=~a;
    assign w3=b&w2; 
    assign w4=~w1;
    assign w5=w4&c;
    assign diff=w1^c;
    assign barr=w3|w5;

    

endmodule
