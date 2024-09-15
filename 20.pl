% Remove the K'th element from a list

remove_at(H, [H|T], 1, T).
remove_at(X, [H|T], N, [H|Xs]) :-
    succ(M, N),
    remove_at(X, T, M, Xs).
