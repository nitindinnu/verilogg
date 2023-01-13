module fa_tb ();
    

    reg a,b,c;
    // wire [1:0]w;
    wire sum,carry;

    initial begin
        // i=3'd6 ;#10;
        a=0;b=1;c=1;#10;
    end
    fa_dut a1(sum,carry,a,b,c);
endmodule
