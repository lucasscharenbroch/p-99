% Duplcate the elements of a list a given number of times

dupli(L, N, X) :- dupli_iter(L, N, N, X).

% (list, n_duplications, remaining_duplications, result)
dupli_iter([], _, _, []).
dupli_iter([_|T], N, 0, X) :- dupli_iter(T, N, N, X).
dupli_iter([H|T], N, M, [H|X]) :-
    M \= 0,
    succ(M_minus_one, M),
    dupli_iter([H|T], N, M_minus_one, X).
