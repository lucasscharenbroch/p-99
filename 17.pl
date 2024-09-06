% Split a list into two parts; the length of the first part is given.

split(X, 0, [], X).
split([H|Z], N, [H|X], Y) :-
    N \= 0,
    succ(N_minus_one, N),
    split(Z, N_minus_one, X, Y).
