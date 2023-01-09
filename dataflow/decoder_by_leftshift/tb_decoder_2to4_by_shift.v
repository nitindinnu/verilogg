module tb_decoder_2to4_by_shift (
    
);
    reg [1:0]a;
    wire [3:0]q;

    dut_ecoder_2to4_by_shift a1(a,q);
    initial begin
    //    a=2'b00;#10;
    //    a=2'b01;#10;
    //    a=2'b10;#10;
    //    a=2'b11;#10;
    a[0]=0;a[1]=0;
    #8; 
    $stop;
    end
    always #2 a[0]=~a[0];
    always #4 a[1]=~a[1];
    
endmodule
