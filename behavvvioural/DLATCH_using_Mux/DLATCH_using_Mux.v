module mux2x1 (input a,b,s,output reg y);
    always @(a,b,s) begin
        y=s?b:a;
        // y= (~s&a) | (s&b);
    end
endmodule

module d_latch (d,clk,q);
    input d,clk;
    inout q;
    mux2x1 a1(.a(q),.b(d),.s(clk),.y(q));
endmodule

module d_latch_tb ;
    reg d,clk;
    wire q;

    initial begin
        d=0;
        clk=0;
    end
    always #10 d=~d;
    always #5 clk=~clk;

    initial
	begin
	$monitor("D=%b | Clock=%b | Output =%b",d,clk,q);
	#200 $finish;
	end

    d_latch a1(d,clk,q);
endmodule