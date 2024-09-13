% Rotate a list N places to the left

:- ensure_loaded("17").

rotate(L, N, X) :-
    N < 0,
    Np is N * -1,
    rotate_dumb(X, Np, L).

rotate(L, N, X) :-
    N >= 0,
    rotate_dumb(L, N, X).

% only works for naturals
rotate_dumb(L, N, X) :-
    split(L, N, L1, L2),
    append(L2, L1, X).
