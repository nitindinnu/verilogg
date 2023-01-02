module encoder4to2_tb (
    
);
    reg [3:0]i;
    wire [1:0]a;

    encoder4to2_dut a1(i,a);
    initial begin
        
        #10
        i[3]=0;i[2]=0;i[1]=0;i[0]=1;#10;
        i[3]=0;i[2]=0;i[1]=1;i[0]=0;#10;
        i[3]=0;i[2]=1;i[1]=0;i[0]=0;#10;
        i[3]=1;i[2]=0;i[1]=0;i[0]=0;#10;
        $stop;
    end

    // initial begin
    //     i[3]=0;i[2]=0;i[1]=0;i[0]=0;
    // end

    // always #5 i[0]=~i[0];
    // always #5 i[1]=~i[1];
    // always #5 i[2]=~i[2];
    // always #5 i[3]=~i[3];/-->here we get 0000 1111

    
    
endmodule
