% Flatten a nested list structure


% From primitives

% concat([], X, X).
% concat([H|T], Y, [H|X]) :- concat(T, Y, X).
% 
% flatten([], []).
% flatten([[HH|HT]|T], X) :-
%     concat(HT, T, T_),
%     concat([HH], T_, L_),
%     flatten(L_, X).
% flatten([[]|T], X) :-
%     flatten(T, X).
% flatten([H|T], X) :-
%     H \= [_|_],
%     flatten(T, Y),
%     concat([H], Y, X).

% With standard library, max clarity

flatten([], []).
flatten([H|T], X) :-
    is_list(H),
    flatten(H, FH),
    flatten(T, FT),
    append(FH, FT, X).
flatten([H|T], X) :-
    \+ is_list(H),
    flatten(T, FT),
    append([H], FT, X).
