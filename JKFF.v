module JKFF(q,qbar,j,k,clock,clear);

input j,k,clock,clear;
output q,qbar;

wire a,b,y,ybar,c,d,clockBar;


nand(a,qbar,j,clock,clear);
nand(b,clock,q,k);
nand(y,a,ybar);
nand(ybar,clear,b,y);

not(clockBar,clock);

nand(c,y,clockBar);
nand(d,ybar,clockBar);
nand(q,c,qbar);
nand(qbar,q,clear,d);

//active low clear

endmodule

