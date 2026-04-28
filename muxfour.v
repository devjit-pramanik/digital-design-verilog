module muxfour (
    input I0,I1,I2,I3,S0,S1,
    output Y
);
wire Y1,Y2;

muxtwo M1 (I0,I1,S0,Y1);
muxtwo M2 (I2,I3,S0,Y2);
muxtwo M3 (Y1,Y2,S1,Y);
endmodule 