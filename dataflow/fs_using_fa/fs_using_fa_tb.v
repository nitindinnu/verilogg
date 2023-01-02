module fs_using_fa_tb (
    
);
    reg a,b,c;
    wire diff,FSCout;//w1,w2,w3,w4,w5,w6;
    fs_using_fa_dut a1(diff,FSCout,w1,w2,w3,w4,w5,w6,a,b,c);

    initial begin
        // #10;
        a=0;b=0;c=0;
    end
    always #5 c=~c;
    always #10 b=~b;
    always #20 a=~a;

endmodule

