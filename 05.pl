% Reverse a list

reversed(L, X) :- areversed(L, [], X).

areversed([], X, X) :- !.
areversed([H|T], A, X) :-
    areversed(T, [H|A], X).
