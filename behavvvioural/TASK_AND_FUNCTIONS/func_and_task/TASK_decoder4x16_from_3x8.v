module decoder_4x16u3x8 (
    a,en,d
);
input [2:0]a;
input en;
output reg[15:0]d;
wire w=~en;
always @(*)
begin
//d[7:0]=
decoder_3x8(w,a[0],a[1],a[2],d[7:0]);
//d[15:8]=
decoder_3x8(en,a[0],a[1],a[2],d[15:8]);
end
// assign d={w[1],w[2]};
task decoder_3x8(
    input en,b0,b1,b2,
    output [7:0]y);
    
reg b0bar,b1bar,b2bar;
begin
    b0bar=~b0;b1bar=~b1;b2bar=~b2;
    y[0]=(en&(b0bar)&(b1bar)&(b2bar));
    y[1]=(en&(b0bar)&(b1bar)&(b2));
    y[2]=(en&(b0bar)&(b1)&(b2bar));
    y[3]=(en&(b0bar)&(b1)&(b2));
    y[4]=(en&(b0)&(b1bar)&(b2bar));
    y[5]=(en&(b0)&(b1bar)&(b2));
    y[6]=(en&(b0)&(b1)&(b2bar));
    y[7]=(en&(b0)&(b1)&(b2));
    // decoder_3x8={y[7],y[6],y[5],y[4],y[3],y[2],y[1],y[0]};
end
endtask
endmodule

module tb_decoder_4x16u3x8 (
);
reg [2:0]a;
reg en;
wire [15:0]d;
decoder_4x16u3x8 dut(a,en,d);
initial begin
    en=0;a=3'b000;
    //  a[0]=0;a[1]=0;a[2]=0;en=0;
     forever begin
        #10 a=a+1;
     end
end
always #80 en=~en;
// always #80 en=~en;
// always #40 a[2]=~a[2];
// always #20 a[1]=~a[1];
// always #10 a[0]=~a[0];
endmodule