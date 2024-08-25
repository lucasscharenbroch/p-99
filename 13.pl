% Run-length encoding of a list (direct solution)

% 10 and 11 already use the "direct" solution, so here's the indirect one.

:- ensure_loaded("09").

encode([], []).
encode(In, Out) :-
    pack(In, Packt), % ...Like Sardines In a Crushd Tin Box
    encode_packt(Packt, Out).

encode_packt([], []).
encode_packt([Xs|Ys], [[X, L]|Rest]) :-
    Xs = [X|_],
    length(Xs, L),
    encode_packt(Ys, Rest).
