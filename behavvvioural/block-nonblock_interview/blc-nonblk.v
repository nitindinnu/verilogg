module blk_nonblk ();
//     integer a=0;b=1,c;
  	reg a,b,c;
    initial begin
      	a=0;b=1;
        c=a+b;
        $display("t11 = %0t , c is %0d",$time,c);
        c<=2;
        $display("t1 = %0t , c is %0d",$time,c);
        $display("t2 = %0t , c is %0d",$time,c);
    end
endmodule

/*
t11 = 0 , c is 1
t1 = 0 , c is 1
t2 = 0 , c is 1
*/