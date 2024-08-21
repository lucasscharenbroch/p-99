% Eliminate consecutive duplicates of list elements

compress([], []).
compress([X], [X]).
compress([H,H|T], X) :- compress([H|T], X).
compress([A,B|T], X) :-
    A \= B,
    compress([B|T], Y),
    X = [A|Y].
