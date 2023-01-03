module demux1to4_tb (
    
);
    reg I,en;
    reg [1:0]s;
    wire [3:0]y;

    demux1to4_dut a1(I,en,s,y);

    initial begin
        #5
        en=0;I=1'bx;s[1]=1'bx;s[0]=1'bx;  
        #5;
        en=1;I=0;s[1]=0;s[0]=0;  #5;
        en=1;I=1;s[1]=0;s[0]=1;  #5;
        en=1;I=0;s[1]=1;s[0]=0;  #5;
        en=1;I=1;s[1]=1;s[0]=1;  #5;
        $stop;
    end
endmodule
