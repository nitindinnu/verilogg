module tb_ha();
reg a,b;
wire y,c;
ha hhh(a,b,y,c);
initial begin
#5 a=0;b=0;
#5 b=1;
#5 a=1;b=0;
#5  b=1;
$stop;
end    
endmodule
