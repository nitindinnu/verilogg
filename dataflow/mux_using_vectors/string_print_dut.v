module string_print;
    reg [39:0]a;
   // integer i;
 initial
  begin
    a= "nitin";
  //  a[1]= "nages";
 // for(i=0;i<6;i=i+1)
    // $display("a[%0d]=%0s",i,a[i]);
    // $display("a[%0d]=%0s",i,a[i]);
    $display("a=%0p",a);
 end
endmodule
