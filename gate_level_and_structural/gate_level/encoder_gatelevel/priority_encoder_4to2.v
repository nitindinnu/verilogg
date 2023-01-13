module priority_encoder_4to2 (i,y,v);
    input [3:0]i;
    output [1:0]y;
    output v;
    wire [1:0]w;

    not(w[0],i[2]);
    and(w[1],i[1],w[0]);

    or(y[0],w[1],i[3]);
    or(y[1],i[2],i[3]); 
    or(v,i[0],i[1],i[2],i[3]);

    // using assign dataflow
    // assign y[0]=d[3]| (~d[2]&d[1]) ; 
    // assign y[1]=d[2]| d[3]; 
    // assign v= d[0]|d[1]|d[2]|d[3]; 
endmodule

module tb_priority_encoder_4to2 ();
    reg [3:0]i;
    wire [1:0]y;
    wire v;
    priority_encoder_4to2 a1(i,y,v);
    
    initial begin
        i=4'b0000;
        // i=4'b0001;#5;
        // i=4'b0001 <<1 ;#5;
        // i=4'b0001 <<2 ;#5;
        // i=4'b0001 <<3 ;#5;
    end
    always #5 i[0]=~i[0];
    always #10 i[1]=~i[1];
    always #20 i[2]=~i[2];
    always #40 i[3]=~i[3];

    
endmodule



