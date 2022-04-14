:- op(900, fy, not).
not( P):- P, !, fail; true.


checkatom(X,Y) :- tell('checkatomfile.txt'), name(Y,Ylist), name(X, Tlist),
		  not( check1(Tlist,Ylist) ), not( check2(Tlist,Ylist)) ,!,
		    write(X), write('is not the prefix or the suffix of another.'), write(nl);
		    ( check1(Tlist,Ylist),!,write(X),write('is the prefix of '), write(Y),write('.'), nl),
		    ( check2(Tlist,Ylist),!,write(X),write('is the suffix of '), write(Y),write('.'), nl), told.


check1(T,Y):- conc1(T,_,Y).
check2(T,Y):- conc1(_,T,Y).

conc1([],L,L).
conc1([X|L1],L2,[X|L3]) :- conc1(L1,L2,L3).
