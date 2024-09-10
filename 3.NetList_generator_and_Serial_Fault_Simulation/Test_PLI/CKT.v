//Verilog file of module SimpleCKT (netlist)

`timescale 1 ns / 1ns

module CKT (a, b, c, d, e, f, w);

input a, b, c, d, e, f;
output w;

wire l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12, l13, l14, l15;

pin #(1) I1 (a , l1);
pin #(1) I2 (b , l2);
pin #(1) I3 (c , l3);
pin #(1) I4 (d , l4);
pin #(1) I5 (e , l5);
pin #(1) I6 (f , l6);

notg #(0, 0) G1 (l7, l1);
or_n #(2, 0, 0) G2 (l8, {l4, l5});
fanout_n #(2, 0, 0) FO1 (l8, {l9, l10});

and_n #(2, 0, 0) G3 (l11, {l7, l2});
and_n #(2, 0, 0) G4 (l12, {l3, l9});
or_n #(2, 0, 0) G5 (l13, {l10, l6});
or_n #(2, 0, 0) G6 (l14, {l11, l12});
and_n #(2, 0, 0) G7 (l15, {l14, l13});

pout #(1) O1 (l15 , w);


endmodule
