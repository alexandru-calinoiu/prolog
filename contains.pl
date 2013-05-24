member(H, [H | _]).
member(X, [_ | T]) :-
	member(X, T).
