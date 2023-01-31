module swap_var_vector (
);
  integer a[8:0]=1;
  integer b[8:0]=2;
    always @(*) begin
        a<=a^b;
        b<=a^b;
        a<=a^b;
      	$display("*****");
        $monitor(a,b);
        #1;
        $display("display %0d %0d",a,b);
        $stop;
    end
endmodule