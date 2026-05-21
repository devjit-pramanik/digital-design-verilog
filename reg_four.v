module reg_four (
    input [3:0] D,
    input clk,
    output [3:0] Q
);
dff d0 (D[0],clk,Q[0]);
dff d1 (D[1],clk,Q[1]);
dff d2 (D[2],clk,Q[2]);
dff d3 (D[3],clk,Q[3]);

endmodule  