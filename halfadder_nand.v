module halfadder_nand (A,B,SUM,CARRY);
input A,B;
output SUM,CARRY;
wire Y1,Y2,Y3;
nand_gate N1 (A,B,Y1);
nand_gate N2 (A,Y1,Y2);
nand_gate N3 (B,Y1,Y3);
nand_gate N4 (Y2,Y3,SUM);
nand_gate N5 (Y1,Y1,CARRY);
endmodule 
