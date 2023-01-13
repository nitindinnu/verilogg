module rca_4bit (sum,cout,i,j,cin);
    parameter bit_size = 4;
    
    input [bit_size-1:0]i,j;
    input cin;
    output [bit_size-1:0]sum;
    output cout;

    wire [bit_size-1:1]c; 

    fa_dut first(sum[0],c[1],i[0],j[0],cin);
    fa_dut second(sum[1],c[2],i[1],j[1],c[1]);
    fa_dut third(sum[2],c[3],i[2],j[2],c[2]);
    fa_dut fourth(sum[3],cout,i[3],j[3],c[3]);
endmodule
