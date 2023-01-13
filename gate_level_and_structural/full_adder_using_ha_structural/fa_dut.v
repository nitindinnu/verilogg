module fa_dut (
    output sum,carry, input a,b,c
);
    // input a,b,c;
    wire [2:0]w;
    // output sum,carry;

  half_adder_dut first(w[0],w[1],a,b); //   half_adder_dut first(w[0],w[1],i[1:0]);
  half_adder_dut second(sum,w[2],w[0],c);
  or(carry,w[2],w[1]);
endmodule
