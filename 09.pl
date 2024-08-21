% Pack consecutive duplicates of list elements into sublists

pack(L, X) :- apack(L, [], X).

apack([], Xs, [Xs]).
apack([A|T], [], X) :- apack(T, [A], X).
apack([A|T], [A|As], X) :- apack(T, [A,A|As], X).
apack([A|T], [B|Bs], X) :-
    A \= B,
    apack([A|T], [], Y),
    append([[B|Bs]], Y, X).
