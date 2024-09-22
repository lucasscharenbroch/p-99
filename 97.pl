% Sudoku

:- use_module(library(clpfd)). % transpose
:- ensure_loaded("17").

sudoku(G) :-
    rows(G, Rs),
    maplist(one_thru_nine, Rs),
    cols(G, Cs),
    maplist(one_thru_nine, Cs),
    blocks(G, Bs),
    maplist(one_thru_nine, Bs).

rows(X, X).
cols(G, X) :- transpose(G, X).
blocks(G, X) :-
    maplist(groups_of(3), G, A),
    transpose(A, B),
    flatten(B, C),
    groups_of(9, C, X).

groups_of(_, [], []).
groups_of(N, Xs, [G|Gs]) :-
    split(Xs, N, G, Ys),
    groups_of(N, Ys, Gs).

one_thru_nine(Xs) :-
    Xs ins 1..9,
    all_distinct(Xs).

problem(1, [[_,_,_,_,_,_,_,_,_],
            [_,_,_,_,_,3,_,8,5],
            [_,_,1,_,2,_,_,_,_],
            [_,_,_,5,_,7,_,_,_],
            [_,_,4,_,_,_,1,_,_],
            [_,9,_,_,_,_,_,_,_],
            [5,_,_,_,_,_,_,7,3],
            [_,_,2,_,1,_,_,_,_],
            [_,_,_,_,4,_,_,_,9]]).

% ?- problem(1, Rows), sudoku(Rows), maplist(portray_clause, Rows).
