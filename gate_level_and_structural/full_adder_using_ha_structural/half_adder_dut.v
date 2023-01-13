module half_adder_dut (
    sum,carry,a,b
);
  input a,b;
  output sum,carry;

  xor(sum,a,b)  ;
  and(carry,a,b);
endmodule

// module half_adder_dut (
//     sum,carry,i
// );
//   input [1:0]i;
//   output sum,carry;

//   xor(sum,i[0],i[1])  ;
//   and(carry,i[0],i[1]);
// endmodule
