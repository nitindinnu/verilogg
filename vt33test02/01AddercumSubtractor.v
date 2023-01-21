module fulladderdut (
    out,carry,a,b,c
);
    input a,b,c;
    output out,carry;

    assign out = a^b^c;
    assign carry = a&b | b&c | c&a;
endmodule

module adder_cum_sub ( 
    out,carr,a,b,c
);
    input [2:0]a,b;
    input c;
    wire [1:0]w;
    output [2:0]out;
    output carr;

    xor a1(p,b[0],c);
    xor a2(q,b[1],c);
    xor a3(r,b[2],c);

    fulladderdut first(out[0],w[0],a[0],p,c);
    fulladderdut second(out[1],w[1],a[1],q,w[0]);
    fulladderdut third(out[2],carr,a[2],r,w[1]);
endmodule


module add_cum_sub_tb ();
    reg [2:0]a,b;
    reg c;
    wire [2:0]out;
    wire carr;

    initial begin
        #5;
        c=0;
        a=3'd0;b=3'd0;#50;
        c=1;
        a=3'd0;b=3'd0;
    end
    always #5 a=a+1'b1;
    always #10 b=b+1'b1;

    adder_cum_sub a1( 
    out,carr,a,b,c
);
endmodule