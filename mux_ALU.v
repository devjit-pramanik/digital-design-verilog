module mux_ALU (
    input A,B,S0,S1,S2,
    output Y
);

wire I0,I1,I2,I3,I4,I5,I6,I7,Y1,Y2,carry;
and_nand G1 (A,B,I0);
or_nand G2 (A,B,I1);
xor_nand G3 (A,B,I2);
xnor_nand G4 (A,B,I3);

muxfour M1 (I0,I1,I2,I3,S0,S1,Y1);

nand_gate G5 (A,B,I4);
nor_gate G6 (A,B,I5);
not_nand G7 (A,I6);
halfadder_nand G8 (A,B,I7,carry);

muxfour M2 (I4,I5,I6,I7,S0,S1,Y2);

muxtwo M3 (Y1,Y2,S2,Y);
endmodule 
