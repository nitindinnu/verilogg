module decoder2to4_tb (
    
);
    reg e,b,a;
    wire [3:0]d;

    decoder2to4_dut a1(e,b,a,d);

    initial begin
        #10;
        e=0;b=1'bx;a=1'bx;#10;
        e=1;b=0;a=0;
    end

    always #5 a=~a;
    always #10 b=~b;

    
    
endmodule

