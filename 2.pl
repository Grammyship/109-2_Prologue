conc1([], L, L).
conc1([X | L1], L2, [X | L3]) :- conc1(L1, L2, L3).


listop(L1):- delvar(L1,L), write('L is'), write(L), write('.'), nl,
		count(L,[],[],F), write('The numbers of elements in L:'), write(F), write('.').


delvar([],[]).
delvar([X|L1],L):-  var(X), delvar(L1,L).
delvar([X|L1],[X|L]):- delvar(L1,L).


count([],_,F,F).
count([X|L],Temp,Ans,F):- check(X,Temp),!, conc1([X],Temp,T), ans(X,1,L,E), conc1(Ans,[E,X],Ans2), count(L,T,Ans2,F);
			count(L,Temp,Ans,F).


check(X,[]):- true.
check(X,[Y|Temp]):- X = Y, !, fail; check(X,Temp). 


ans(_,E,[],E).
ans(X, A,[Y|L],E):- X = Y,!, A1 is A+1, ans(X,A1,L,E); ans(X,A,L,E). 