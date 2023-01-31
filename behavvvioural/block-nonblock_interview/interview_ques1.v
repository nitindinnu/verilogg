module ques1 ();
  reg a,b,c;

    initial begin
        $monitor("[%0t] a=%0b,b=%0b,c=%0b",$time,a,b,c);
        a=1;
        b=0;
        a=#5 b;
        c=#5 a;
        a<=#5 b;
        c<=#5 a;
    end
endmodule

/*
[0] a=1,b=0,c=x
[5] a=0,b=0,c=x
[10] a=0,b=0,c=0
*/