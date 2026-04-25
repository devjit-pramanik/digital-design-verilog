module or_nand (A,B,Y);
input A,B;
output Y;
wire A1,B1;

not_nand N1 (A,A1);
not_nand N2 (B,B1);
nand_gate N3 (A1,B1,Y);

endmodule