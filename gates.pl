inv(0, 1).
inv(1, 0).

or(0, 0, 0).
or(1, 0, 1).
or(0, 1, 1).
or(1, 1, 1).

and(0, 0, 0).
and(0, 1, 0).
and(1, 0, 0).
and(1, 1, 1).

xor(0, 0, 0).
xor(0, 1, 1).
xor(1, 0, 1).
xor(1, 1, 0).

nand(0, 0, 1).
nand(0, 1, 1).
nand(1, 0, 1).
nand(1, 1, 0).

half_adder(A, B, C, S) :-
	xor(A, B, S),
	and(A, B, C).

full_adder(A, B, Cin, Cout, S) :-
	half_adder(A, B, C1, S1),
	half_adder(Cin, S1, C2, S),
	or(C2, C1, Cout).

mystery(A, B, D) :-
	nand(A, B, T1),
	nand(T1, A, T2),
	nand(T1, B, T3),
	nand(T2, T3, D).