module tb_fa_using_ha(
);
reg a,b,c;
wire w1,w2,w3,sum,carry;
    fa_using_ha test(a,b,c,w1,w2,w3,sum,carry);
    /* using conventional approach*/
    // initial begin
    //    #5 a=0;b=0;c=0;
    //     #5 a=0;b=0;c=0;
    //     #5 b=0;c=1;
    //     #5 b=1;c=0;
    //     #5 b=1;c=1;
    //     #5 a=1;b=0;c=0;
    //     #5 b=0;c=1;
    //     #5 b=1;c=0;
    //     #5 b=1;c=1;
    //     $stop;
    // end /

    /*using always*/
    initial begin
        a=0;b=0;c=0;
    end
    always #8 a=~a;
    always #4 b=~b;
    always #2 c=~a;

    // initial repeat(10) begin
    //     a=$random;b=$random;c=$random; #10;
    // end

endmodule
