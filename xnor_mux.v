module xnor_mux (
    input A,B,
    output Y
);

muxfour M1 (1'b1,1'b0,1'b0,1'b1,B,A,Y);
endmodule 