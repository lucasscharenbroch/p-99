% Drop every N'th element from a list.

drop(L, N, X) :- drop_iter(L, N, N, X).

drop_iter([], _, _, []).
drop_iter([_|T], N, 1, X) :- drop(T, N, X).
drop_iter([H|T], N, M, [H|X]) :-
    M \= 1,
    succ(M_minus_one, M),
    drop_iter(T, N, M_minus_one, X).
