:- op(900, fy, not).
not( P):- P, !, fail; true.

conc1([], L, L).
conc1([X | L1], L2, [X | L3]) :- conc1(L1, L2, L3).

insertion(A,P,[],M):- conc1(P,[A],M).
insertion(A,P,[X|L],M):- X > A,!, conc1([A],[X|L],L2), conc1(P,L2,M); conc1(P,[X],P2), insertion(A,P2,L,M).

sort1([],[]).
sort1([X|U],M):- sort1(U,S), insertion(X,[],S,M).