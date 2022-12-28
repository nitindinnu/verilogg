module tb_2x1mux (

);

reg x0,x1,s;
wire y;

mux2x1 cos(x0,x1,s,y);

initial begin
// #10 s=0; x0=1;x1=0;
// #10 s=1;x0=0;x1=1;

#5 x0=0;x1=0;s=0;
#5 x0=0;x1=1;s=0;
#5 x0=1;x1=0;s=1;
#5 x0=1;x1=1;s=1; 
$stop;
// $finish; //stop simulation at parallel execution

end

    
endmodule