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
module fs_using_hs_tb (
   
);
reg a,b,c;
wire diff,barr;

fs_using_hs_dut a1(diff,barr,a,b,c);
initial begin
    a=0;b=0;c=0;
end
   always #5 c=~c;
   always #10 b=~b;
   always #15 a=~a;
endmodule

