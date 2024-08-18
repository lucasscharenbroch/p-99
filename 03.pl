% Find the K'th element of a list

kth([X|_], K, X) :- 0 is K.
kth([_|XS], K, X) :-
    K >= 0,
    kth(XS, K-1, X).
