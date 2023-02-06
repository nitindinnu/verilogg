module usr #(parameter data_bitsize=4)(
    input [1:0]sel,
    input [data_bitsize-1:0]datain,
    input clk,reset,sin,
    output reg [data_bitsize-1:0]out
);
    always @(posedge clk ) begin
        if (reset) begin
            out<=0;
        end
        case (sel)
            2'b00:begin out<=0; end
            2'b01:begin out<={sin,out[data_bitsize-2:0]};  end //rightshift
            2'b10:begin out<={out[data_bitsize-1:1],sin};end //leftshift
            2'b11:begin out<=datain; end
        endcase
    end
endmodule //usr

module usr_tb (
    
);
    parameter data_bitsize=4;
    reg [1:0]sel;
    reg [data_bitsize-1:0]datain;
    reg clk,reset,sin;
    wire [data_bitsize-1:0]out;

    // initial begin
    //     reset=1;
    //     {sel,clk,sin}<=0;
    //     repeat(25)
    //         datain=$random;
    //     forever begin
    //         #5 sel=sel+1;clk=~clk;sin=~sin;
    //     end
    // end
    // initial #10 reset =0;
    initial begin
        clk=0;
        repeat(50)
            #5 clk=~clk; //25 full clk cycles
    end

   initial begin
    {datain}=1011;{sel,reset,sin} =0001; #10;
    {datain}=1011;{sel,reset,sin} =0101; #10;
    {datain}=0011;{sel,reset,sin} =1000; #10;
    {datain}=1011;{sel,reset,sin} =1100;
   end 

    usr  tb(sel,datain,clk,reset,sin,out);
endmodule //usr
