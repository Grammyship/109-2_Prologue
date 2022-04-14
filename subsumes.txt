compare([],[]).
compare([X|L1],[Y|L2]):- subsumes(X,Y), !, compare(L1,L2).

subsumes(A,B):- atom(A), !, A == B.
subsumes(A,B):- var(A), !, A = B.
subsumes(A,B):- nonvar(B), A =.. [X|A1] , B =.. [X|B1] , compare(A1,B1).