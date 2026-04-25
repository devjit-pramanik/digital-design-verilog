module not_nand (A,Y);
input A;
output Y;
assign Y = ~(A&A);
endmodule