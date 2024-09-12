% Extract a slice from a list

:- ensure_loaded("17").

slice(L, N, M, X) :-
    succ(Np, N),
    split(L, Np, _, LdropNp),
    SliceLength is M - Np,
    split(LdropNp, SliceLength, X, _).
