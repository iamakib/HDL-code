module full_adder(
	input a,b,cin,
	output sum,cout
);

wire s1,c1,s2,c2;

half_adder h01(a,b,s1,c1);

half_adder h02(s1,cin,sum,c2);

or(cout,c1,c2);

endmodule
