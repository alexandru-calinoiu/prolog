editor(zenspider, emacs).
editor(drbrain, vim).
editor(phiggins, vim).
editor(tenderlove, vim).

keyboard(zenspider, dvorak).
keyboard(drbrain, dvorak).
keyboard(tenderlove, qwerty).
keyboard(phiggins, qwerty).

pair(Person1, Person2) :-
	editor(Person1, Editor),
	editor(Person2, Editor),
	Person1 @> Person2.

pair(Person1, Person2) :-
	keyboard(Person1, Keyboard),
	keyboard(Person2, Keyboard),
	Person1 @> Person2.

super_pair(Person1, Person2) :-
	editor(Person1, Editor),
	editor(Person2, Editor),
	keyboard(Person1, Keyboard),
	keyboard(Person2, Keyboard),
	Person1 @> Person2.
