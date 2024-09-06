% Duplicate the elements of a list.

naive_dupli([], []).
naive_dupli([H|T], [H,H|X]) :- naive_dupli(T, X).
