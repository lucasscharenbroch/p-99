% Extract a given number of randomly selected elements from a list

:- ensure_loaded("20").

roll(Xs, N, X) :-
    M is 1 + random(N),
    remove_at(X, Xs, M, _).

rnd_select(L, N, R) :-
    length(L, M),
    length(R, N),
    maplist(roll(L, M), R).
