module mux4x1_tb_vectors (
    
);
reg [3:0]i;
reg [1:0]s;
wire y;

mux4x1_dut_vectors a1(y,s,i);

initial begin
    #10;
    s[0]=0;s[1]=0; i[0]=1;i[1]=0;i[2]=0;i[3]=0; #10; 
    s[0]=0;s[1]=1; i[0]=0;i[1]=1;i[2]=0;i[3]=0; #10; 
    s[0]=1;s[1]=0; i[0]=0;i[1]=0;i[2]=1;i[3]=0; #10; 
    s[0]=1;s[1]=1; i[0]=0;i[1]=0;i[2]=0;i[3]=1; #10; 
end

// always #10 s[0]=~s[0];
// always #5 s[1]=~s[1];

// always #30 i[0]=~i[0];
// always #15 i[1]=~i[1];
// always #10 i[2]=~i[2];
// always #5 i[3]=~i[3];
    
endmodule