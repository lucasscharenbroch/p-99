% Decode a run-length encoded list

decode([], []).
decode([[X, N]|Xs], [X|Ys]) :-
    N \= [],
    succ(M, N),
    decode([[X, M]|Xs], Ys).
decode([[_, 0]|Xs], Ys) :- decode(Xs, Ys).
decode([X|Xs], [X|Ys]) :-
    \+ is_list(X),
    decode(Xs, Ys).
