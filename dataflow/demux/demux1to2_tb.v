module demux1to2_tb (
    
);
    reg I,s;
    wire [0:1]y;
    demux1to2_dut a1(I,s,y);
    initial begin
        I=1;

        s=0;#10;
        s=1;#10;
    end
endmodule
