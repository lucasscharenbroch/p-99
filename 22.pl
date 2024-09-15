% Create a list containing all integers within a given range

range(N, N, [N]).
range(N, M, [N|X]) :-
    N < M,
    succ(N, Np),
    range(Np, M, X).
