male('Nat King Cole').
parent( 'Nat King Cole', 'Nathalie Cole').
father(me, tudor).
father(me, matei).
father(me, fetita).

father(X, Y) :- male(X), parent(X, Y).