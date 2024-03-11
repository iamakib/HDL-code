module riple_counter(q,qb,clk,clr);

input clk ,clr ;
output [3:0]q,qb ;  

   JKFF f1(q[0] ,qb[0] , 1, 1, clk , clr);
   JKFF f2(q[1] ,qb[1] , 1, 1, q[0] , clr);
   JKFF f3(q[2] ,qb[2] , 1, 1, q[1] , clr);
   JKFF f4(q[3] ,qb[3] , 1, 1, q[2] , clr);

endmodule

module stimulus;

	reg clk,clr;
	wire [3:0]q;

	riple_counter c1(q,qb,clk,clr);
	
	initial
	//begin
		clk = 1'b0;
	always
	#5 clk = ~clk;

	//end

	initial
	begin
		clr = 1'b0;
		#10 clr = 1'b1;
		#170 clr = 1'b0;

		/* clear to 0000 after 170 unit time. 16 states. 
		16*10 per unit. first 10 second is for clearing to initial
		*/

	end

endmodule

