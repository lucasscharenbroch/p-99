% Run-length encoding of a list

encode([], []).
encode([X|Xs], [[X, N]|Zs]) :-
    strip_leading(X, [X|Xs], Ys, N),
    encode(Ys, Zs).

% strip_leading(E, Xs, Ys, N).
% N is the number of leading E's in Xs.
% Ys is Xs with the N leading elements dropped (the E's)

strip_leading(_, [], [], 0).
strip_leading(E, [Y|Ys], [Y|Ys], 0) :- E \= Y.
strip_leading(E, [E|Xs], Ys, N) :-
    strip_leading(E, Xs, Ys, M),
    succ(M, N).
