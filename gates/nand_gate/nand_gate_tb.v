module tb_nand (
    
);
reg a,b;
wire Y;
nand_gate test(Y,a,b);


initial begin
    #10 a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    $stop;
end
    
endmodule
