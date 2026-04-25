module xor_nandc (A,B,Y);
input A,B;
output Y;

wire Y1,Y2,Y3;
nand_gate N1 (A,B,Y1);
nand_gate N2 (A,Y1,Y2);
nand_gate N3 (B,Y1,Y3);
nand_gate N4 (Y2,Y3,Y);

endmodule 