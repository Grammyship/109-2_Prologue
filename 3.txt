square4(M,N,S):- M >= N, solid(S,N),nl.
square4(M,N,S):- M < N, solid(S,N), nl, hollow(S,N,N),nl, M1 is M+2, square4(M1,N,S).

hollow(S,N,M):- M =< 0.
hollow(S,N,M):- M >= N, put(S), M1 is M-1, hollow(S,N,M1).
hollow(S,N,M):- M =< 1, put(S), M1 is M-1, hollow(S,N,M1).
hollow(S,N,M):-	write(' '), M1 is M-1, hollow(S,N,M1).

solid(S,N):- N =< 0.
solid(S,N):- N > 0, put(S), M is N-1, solid(S,M).



isquares:- write('Please input the empty square size N: '), read(N),
		( N =< 0 ,! ; write('Please input symbol S: '), get(S),
		square4(1,N,S), isquares ).

