% Find the number of elements of a list

% len([], 0).
% len([_|XS], L) :-
%     len(XS, XSL),
%     L is 1 + XSL.

len(L, X) :- alen(L, 0, X).

alen([], A, A).
alen([_|Rest], A, X) :-
    Ap is A+1,
    alen(Rest, Ap, X).
