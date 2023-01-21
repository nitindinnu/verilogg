// Code your design here
module mux2x1(a,b,c,y);
//   integer a;
  reg a;
//   input a;
//   wire a;
  input b,c;
  output y;
  assign y=a?b:c;
endmodule

module mux2x1tb();
  reg a,b,c;
  wire y;
  initial begin
  a=1;
    b=0;c=1;#5 
   a=0;b=0;c=1; 
  end
  mux2x1 a1(a,b,c,y);
endmodule