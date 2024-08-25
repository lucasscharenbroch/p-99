% Modified run-length encoding

:- ensure_loaded("10").

simp([X, 1], X).
simp([X, N], [X, N]) :- N \= 1.

encode_modified(Xs, Zs) :-
    encode(Xs, Ys),
    maplist(simp, Ys, Zs).
