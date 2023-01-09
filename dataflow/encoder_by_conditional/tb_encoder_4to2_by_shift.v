module tb_encoder_4to2_by_shift (
    
);
    reg [3:0]d;
    wire [1:0]y;
    dut_encoder_4to2_by_shift a1(d,y);
    initial begin
        d=4'b0001;#10;
        d=4'b0001 <<1 ;#10;
        d=4'b0001 <<2 ;#10;
        d=4'b0001 <<3 ;#10;
    end
endmodule
