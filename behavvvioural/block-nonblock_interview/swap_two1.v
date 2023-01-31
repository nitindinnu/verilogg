module swap2nonblocking (
);
    integer a=1,b=2;
    always @(*) begin
        a<=b;
        b<=a;
      	$display("*****");
        $monitor(a,b);
        #1;
        $display("display %0d %0d",a,b);
        $stop;
    end
endmodule

/*op:
*****
          2          1
display 2 1
*/

module swap2blocking (
);
    integer a=1,b=2;
    always @(*) begin
        a=b;
        b=a;
      	$display("*****");
        $monitor(a,b);
        #1;
        $display("display %0d %0d",a,b);
        $stop;
    end
endmodule

/*op
*****
          2          2
display 2 2
*/