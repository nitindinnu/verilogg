module tb_priority_bit_gen (
    
);
    reg a,b,c;
    wire Even,Odd;

    dut_priority_bit_gen a1(a,b,c,Even,Odd);
    initial begin
        a=0;b=0;c=0;
    end

    always #5 c=~c;
    always #10 b=~b;
    always #20 a=~a;
endmodule
