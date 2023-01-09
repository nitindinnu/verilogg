module tb_decoder_4to16_by_shift (
    
);
    reg [3:0]a;
    wire [15:0]q;

    dut_decoder_4to16_by_shift a1(a,q);
    initial begin
    //    a=2'b00;#10;
    //    a=2'b01;#10;
    //    a=2'b10;#10;
    //    a=2'b11;#10;
    a[0]=0;a[1]=0;a[2]=0;a[3]=0;
    // #8; 
    // $stop;
    end
    always #2 a[0]=~a[0];
    always #4 a[1]=~a[1];
    always #8 a[2]=~a[2];
    always #16 a[3]=~a[3];
    
endmodule
