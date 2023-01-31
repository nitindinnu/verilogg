module xor_as_buffer_inverter (in,buff,nott);
    function xorrfunc(input a,b);
            // not a1(abar,a);
            // not a2(bbar,b);
            xorrfunc=a^b;
    endfunction
    /*A pass gate or a buffer passes the input as it is to the output. 
    If A is the input and Y is the output, this can be represented by Y=A. 
    Hence, this can be implemented using XOR gate by connecting one of 
    the inputs to be always zero as below: Y = 0.A’ + 0’.A = 0 + 1.A = A
     */
    /*An XOR gate is described using the equation Y = AB’ + A’B. 
    If one of the inputs is tied to 1 as shown below, 
    then we get: Y = A.1’ + A’.1 = 0 + A’ = A’, 
    which is a NOT gate or an inverter*/
    input [1:0]in;
    wire y;
    output buff,nott;
    assign y = xorrfunc(in[0],in[1]),//not //buffer
            buff = y,
            nott= ~y;
    endmodule

module  xor_as_buffer_inverter_tb(
);
    reg [1:0]in;
    wire buff,nott;  
    initial begin
        in=0;
        forever #5 in=in+1;
    end

    xor_as_buffer_inverter a1(in,buff,nott);
endmodule


