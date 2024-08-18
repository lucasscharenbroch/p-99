% Find the last element of a list

last([X|[]], X).
last([_|T], X) :- last(T, X).
