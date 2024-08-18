% Find the last-but-one (second last) element of a list

second_last([X,_|[]], X).
second_last([_,Y|YS], X) :- second_last([Y|YS], X).
