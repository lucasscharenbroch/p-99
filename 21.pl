% Insert an element at a given position into a list

:- ensure_loaded("20").

insert_at(X, L, N, R) :- remove_at(X, R, N, L).

% insert_at(X, Xs, 1, [X|Xs]).
% insert_at(X, [H|T], N, [H|Ys]) :-
%     succ(M, N),
%     insert_at(X, T, M, Ys).
