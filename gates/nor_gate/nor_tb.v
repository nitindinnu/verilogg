module tb_nor (
    
);
reg a,b;
wire Y;
nor_gate test(Y,a,b);


initial begin
    $monitor("a=%0b,b=%0b,Y=%0b",a,b,Y);
     a=0;b=0; #10;
     a=0;b=1; #10;
     a=1;b=0; #10;
     a=1;b=1; #10;
    $stop;
end
    
endmodule
