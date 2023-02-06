    module RAM_basic #(parameter datawidth =8 ,adresswidth=10)(
    input clk,reset,wr_en,
    input [adresswidth-1:0]addressline,
    input [datawidth-1:0]din,
    output reg [datawidth-1:0]dout
);
    reg [datawidth-1:0]registar[2**adresswidth-1:0];

    always @(posedge clk ) begin
        if(reset)begin
            dout<=0;
        end
        else begin
            if (wr_en==1) begin
                registar[addressline]<=din;
            end 
            else begin
                dout<=registar[addressline];
            end
        end
    end
endmodule //RAM_basic

module tb_RAM_basic (
    
);
    parameter datawidth =8 ,adresswidth=10;
    reg clk,reset,wr_en;
    reg [adresswidth-1:0]addressline;
    reg [datawidth-1:0]din;
    wire [datawidth-1:0]dout;
    initial begin
        clk=0;reset=0;wr_en=1;
        addressline=10'd0;din=8'd5;#10;
        addressline=10'd1;din=8'd6;#10;
        addressline=10'd2;din=8'd7;#10;
        addressline=10'd3;din=8'd8;#10;
        addressline=10'd4;din=8'd9;#10;
        wr_en=0;
        addressline=10'd0;#10;
        addressline=10'd1;#10;
        addressline=10'd2;#10;
        addressline=10'd3;#10;
        addressline=10'd4;#10;
    end 
    always #5 clk=~clk;

    RAM_basic a1(clk,reset,wr_en,addressline,din,dout);
endmodule //RAM_basic
