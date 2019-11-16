//lib.v
//xor module
module xor2 (input wire i0, i1, output wire o);
  assign o = i0 ^ i1;
endmodule


//full adder module
module fa ( input wire i0, i1, cin, output wire sum, cout);
    assign sum = i0 ^ i1 ^ cin;
    assign cout = (i0 & i1) | (i1 & cin) | (cin & i0);
endmodule

