module full_adder_dut (
    outt,carry,a,b,c
);
    //gate level
    input a,b,c ;
    // wire x,y,z;
    output outt,carry;

    // //gate level
    // xor(outt,a,b,c);
    
    // and(x,a,b);
    // and(y,b,c);
    // and(z,c,d);

    // or(carry,x,y,z);

    //dataflow
    assign outt = a^b^c;
    assign carry= a&b | b&a | c&a;
endmodule

module fa_tb ();
    

    reg a,b,c;
    // wire [1:0]w;
    wire outt,carry;

    initial begin
        // i=3'd6 ;#10;
        a=0;b=1;c=1;#10;
        a=0;b=1;c=1;#10;
    end
    full_adder_dut a1(outt,carry,a,b,c);
endmodule

