module decoder4x16__using_3x8 (
    i,d,en
);
    task decoder3x8(input [2:0]i,
                    output [7:0]d,
                    input en);
        
        reg i0bar,i1bar,i2bar;
        begin
        i0bar=~i[0];
        i1bar=~i[1];
        i2bar=~i[2];

         d[0]=en&i0bar&i1bar&i2bar;
         d[1]=en&i0bar&i1bar&i[2];
         d[2]=en&i0bar&i[1]&i2bar;
         d[3]=en&i0bar&i[1]&i[2];
         d[4]=en&i[0]&i1bar&i2bar;
         d[5]=en&i[0]&i1bar&i[2];
         d[6]=en&i[0]&i[1]&i2bar;
         d[7]=en&i[0]&i[1]&i[2];
        end
    endtask

    input [2:0]i;
    input en;
    output reg [15:0]d;
    wire p,q;    
    assign p=en;
    not a1(q,en);

    always @(*) begin
        decoder3x8(i,d[7:0],q);
        decoder3x8(i,d[15:8],p);
    end
endmodule //decoder4x16__using_3x8

module tb_decoder4x16__using_3x8 (
    
);

    reg [2:0]i;
    reg en;
    wire [15:0]d;

    initial begin
        // i=0;
        en=0;
        i=3'b000;
        // i=3'b000; //msb en,i[0],i[1],i[2] lsb
        forever begin
            #10 i=i+1;
        end
    end
    initial #80 en=1;
    // always #5 i= i+1'b1;
    // always #5 i[2]=~i[2];
    // always #10 i[1]=~i[1];
    // always #20 i[0]=~i[0];
    decoder4x16__using_3x8 a1(i,d,en);
endmodule //decoder4x16__using_3x8
