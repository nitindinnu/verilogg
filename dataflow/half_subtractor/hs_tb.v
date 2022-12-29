module tb_hs ();

reg a,b;
wire diff,ba;

hs_dut test(diff,ba,a,b);

initial begin
    $monitor("a=%0b,b=%0b,difference=%0b,barrow=%0b",a,b,diff,ba);
    #5;
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $stop;
end
endmodule