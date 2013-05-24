lenght([], 0).
lenght([_ | T], N) :-
	lenght(T, N1),
	N is N1 + 1.
