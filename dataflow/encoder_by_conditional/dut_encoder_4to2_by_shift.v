module dut_encoder_4to2_by_shift (
    d,y
);
    input [3:0]d;
    output [1:0]y;

    // assign y[0]=d[0]| ~d[1]&d[2];
    // assign y[1]=d[0]|d[1];

    // assign y[0]= d[1]| d[3]; //a=d1+d3
    // assign y[1]= d[2]| d[3]; //b=d2+d3

    assign y = (d==4'b0001)? 2'b00 : 
                (d==4'b0010)?2'b01 :
                    (d==4'b0100)? 2'b10 : 2'b11;
endmodule
