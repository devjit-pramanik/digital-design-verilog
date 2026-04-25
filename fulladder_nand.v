module fulladder_nand (A,B,Cin,SUM,Cout);
input A,B,Cin;
output SUM,Cout;
wire Y1,Y2,Y3,SUM0,Y4,Y5,Y6,C1,C2;

nand_gate N1 (A,B,Y1);
nand_gate N2 (A,Y1,Y2);
nand_gate N3 (B,Y1,Y3);
nand_gate N4 (Y2,Y3,SUM0); 
nand_gate N6 (SUM0,Cin,Y4); 
nand_gate N7 (SUM0,Y4,Y5);
nand_gate N8 (Cin,Y4,Y6);
nand_gate N9 (Y5,Y6,SUM);
nand_gate N10 (Y1,Y4,Cout);
endmodule 
