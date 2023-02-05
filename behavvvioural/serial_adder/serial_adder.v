module serial_adder (
    input a,b,
    input cin,
    input reset,clk,
    output reg sum,
    output reg cout
);
    reg c,flag;
    always @(posedge clk,posedge reset) begin
        if (reset==1) begin
            sum = 0;
            cout = c;
            flag = 0;
        end else begin
            if (flag==0) begin
                c=cin;
                flag=1;
            end
            cout=0;
            sum = a^b^c; 
            c  = (a & b) | (c & b) | (a & c);
        end
    end
endmodule //serial_adder

module tb_serial_adder (
    
);
    reg a,b,cin,reset,clk;
    wire sum,cout;
    initial begin
        // Initialize Inputs
        clk = 1;
        reset = 0;
        a = 0;
        b = 0;
        cin = 0;
        reset = 1;  
        #20;
        reset = 0;
        //add two 4 bit numbers, 1111 + 1101 = 11101
        a = 1; b = 1; cin = 1;    #10;
        a = 1; b = 0; cin = 0;  #10;
        a = 1; b = 1; cin = 0;  #10;
        a = 1; b = 1; cin = 0;  #10;
        reset = 1;
        #10;
        reset = 0;
        //add two 5 bit numbers, 11011 + 10001 = 101101
        a = 1; b = 1; cin = 1;    #10;
        a = 1; b = 0; cin = 0;  #10;
        a = 0; b = 0; cin = 0;  #10;
        a = 1; b = 0; cin = 0;  #10;
        a = 1; b = 1; cin = 0;  #10;
        reset = 1;
        #10;
    end
    always #5 clk=~clk;
    serial_adder a1(a,b,cin,reset,clk,sum,cout);
endmodule //serial_adder
