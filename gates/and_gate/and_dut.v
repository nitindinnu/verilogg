module and_dut (
    a,b,y
);
    input a,b;
    output y;

    and(y,a,b);
    //assign y=a&b;
endmodule

module and_tb (
);
    reg p,q; //inputs
    wire r;  //outputs

    and_dut test(.a(p),.b(q),.y(r));

    initial begin
    $monitor("p=%0b,q=%0b,r=%0b",p,q,r);
    // $display("p=%0b,q=%0b,r=%0b",p,q,r);
    p=0;q=0; #20;
    p=0;q=1; #20;
    p=1;q=0; #20;
    p=1;q=1; #20;
    $stop;
    end
endmodule

