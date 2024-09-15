% Lotto: Draw N random numbers from the set 1..M

roll(Min, Max, X) :- X is random(Max - Min + 1) + Min.

rnd_select(N, Max, L) :-
    length(L, N),
    maplist(roll(1, Max), L).
