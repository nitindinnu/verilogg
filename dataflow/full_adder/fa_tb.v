module tb_fa (
    
);
reg a,b,c;
wire sum,carry;
fa test(a,b,c,sum,carry);
  initial begin
     a=0;b=0;c=0;
//     #5 b=0;c=1;
//     #5 b=1;c=0;
//     #5 b=1;c=1;
//     #5 a=1;b=0;c=0;
//     #5 b=0;c=1;
//     #5 b=1;c=0;
//     #5 b=1;c=1;
//    $stop;
  end  

  always #8 a=~a;
  always #4 b=~b;
  always #2 c=~c; 
  
endmodule
