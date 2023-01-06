module tb_decimal_to_bcd_encoder (
    
);

    reg [9:0]d;
    wire D,B,C,A;

    dut_decimal_to_bcd_encoder a1(d,D,C,B,A);

    initial begin
        #10;
        d[9]=0;d[8]=0;d[7]=0;d[6]=0;d[5]=0;d[4]=0;d[3]=0;d[2]=0;d[1]=0;d[0]=1;#10;
        d[0]=0;d[1]=1;#10;
        d[1]=0;d[2]=1;#10;
        d[2]=0;d[3]=1;#10;
        d[3]=0;d[4]=1;#10;
        d[4]=0;d[5]=1;#10;
        d[5]=0;d[6]=1;#10;
        d[6]=0;d[7]=1;#10;
        d[7]=0;d[8]=1;#10;
        d[8]=0;d[9]=1;#10;
    end
endmodule
