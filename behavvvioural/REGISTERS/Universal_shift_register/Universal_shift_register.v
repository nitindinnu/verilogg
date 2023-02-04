module Universal_shift_register #(parameter data_bitsize =4)(
    input clk,reset,
    input  [1:0]sel,
    input [data_bitsize-1:0]din,
    input sin,
    output reg [data_bitsize-1:0]dout
);
    always @(posedge clk ) begin
        if (reset) begin
            dout<=4'b0000;
        end else begin
            case (sel)
                2'b00:dout<=din; 
                2'b01:dout<={sin,dout[data_bitsize-2:0]}; //shift right sin,dout[2:0]
                2'b10:dout<={dout[data_bitsize-1:1],sin}; //shift left dout[3:1],sin
                2'b11:dout<=din;
            endcase
        end
    end
endmodule //Universal_shift_register

module tb_Universal_shift_register (
    
);
    parameter data_bitsize =4 ;
    reg clk,reset;
    reg  [1:0]sel;
    reg [data_bitsize-1:0]din;
    reg sin;
    wire [data_bitsize-1:0]dout;

    initial begin
        clk=0;
        repeat(50)
            #5 clk=~clk; //25 full clk cycles
    end

   initial begin
    {din}=1011;{sel,reset,sin} =0001; #10;
    {din}=1011;{sel,reset,sin} =0101; #10;
    {din}=0011;{sel,reset,sin} =1000; #10;
    {din}=1011;{sel,reset,sin} =1100;
   end 
    Universal_shift_register a1(clk,reset,sel,din,sin,dout);
endmodule //Universal_shift_register
