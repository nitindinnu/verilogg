module mux7x1using2x1_tb (
    
);
    // parameter n=4;
    reg [6:0]i;
    reg [2:0]s;
    wire [4:0]y;
    wire Y;  

  mux7x1using2x1_dut a1(i,s,y,Y);

  initial begin
    i[0]=1;i[1]=0;i[2]=0;i[3]=0;i[4]=1;i[5]=1;i[6]=0;

    s[2]=0;s[1]=0;s[0]=0;#10;
    s[2]=0;s[1]=0;s[0]=1;#10;
    s[2]=0;s[1]=1;s[0]=0;#10;
    s[2]=0;s[1]=1;s[0]=1;#10;
    s[2]=1;s[1]=0;s[0]=0;#10;
    s[2]=1;s[1]=0;s[0]=1;#10;
    s[2]=1;s[1]=1;s[0]=0;#10;
    s[2]=1;s[1]=1;s[0]=1;#10;
    $stop;
  end
//   always #5 s[0]=~s[0];
//   always #10 s[1]=~s[1];
//   always #20 s[2]=~s[2];
endmodule

