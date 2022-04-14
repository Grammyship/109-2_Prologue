conc1([], L, L).
conc1([X | L1], L2, [X | L3]) :- conc1(L1, L2, L3).


simplify2(String, E) :- classify(String, [], 0, E).


classify(S+X, L, N, E) :- number(X), !, N1 is N + X, classify(S, L, N1, E).	% This one is number
classify(S+X, L, N, E) :- atom(X), conc1([X],  L, L1), classify(S, L1, N, E).	% This one is atom
classify(X, L, N, E) :- number(X), !, N1 is N + X, answer(L, N1, E).		% The last one is number
classify(X, L, N, E) :- atom(X), append([X], L, L1), answer(L1, N, E).	% The last one is atom


% make the answer
answer([], N, N).
answer(L, 0, Ep) :- make_power(L, Ep).
answer(L, N, Ep) :- make_power(L, Ln), Ep = Ln + N.


% find all the power of atoms
make_power(L, S) :- last(L, X), power(X, L, N), del_X(X, L, L1), L1 = [], !, ( N>1, !, S = N*X; S = X ).
make_power(L, E+S) :- last(L, X), power(X, L, N), del_X(X, L, L1), ( N>1, !, S = N*X; S = X ), make_power(L1, E).


% calculate the power of X
power(X, [], 0).
power(X, [X|L], N) :- power(X, L, N1), N is N1 + 1 , !.
power(X, [_|L], N) :- power(X, L, N).


% delete all X in L
del_X(X, [], []).
del_X(X, [X|L1], L2) :- del_X(X, L1, L2).
del_X(X, [Y|L1], [Y|L2]) :- del_X(X, L1, L2).
