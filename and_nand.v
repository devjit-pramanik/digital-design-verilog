module and_nand (A,B,Y);
input A,B;
output Y;

wire Y1;
nand_gate N1 (A,B,Y1);
not_nand N2 (Y1,Y);

endmodule 