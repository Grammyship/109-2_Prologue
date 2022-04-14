simplify1(S,E):- ans(S,A,N), ( N == 0, E = A; A == 0, E = N; E = A+N ).

ans(L+S,A,N1):- ans(L,A,N), number(S),!, N1 is N+S.
ans(L+S,A1,N):- ans(L,A,N), ( A == 0, A1 = S ; A1 = A+S ).
ans(S,S,0):- atom(S),!.
ans(S,0,S).