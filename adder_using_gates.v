module adder(
	input a,b,cin,
	output sum,carry
);

// for sum
wire x;

xor(x,a,b);
xor(sum,x,cin);

// for carry

wire y,z;

and(y,x,cin);
and(z,a,b);
or(carry,y,z);

endmodule