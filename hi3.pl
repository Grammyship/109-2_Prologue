:- op(900, fy, not).
not( P):- P, !, fail; true.


conc1([], L, L).
conc1([X | L1], L2, [X | L3]) :- conc1(L1, L2, L3).

reverse1([],L).
reverse1([X|L1],L):- conc1(X,L,L2) , reverse1([L1,L2]).

line(_,0,_).
line(N,N1,S):-N2 is N1-1,N3 is N-N2,symbol(N,N3,S),nl,line(N,N2,S).

symbol(N,N3,S):-N3>0,N4 is N3-1,write(S),symbol(N,N4,S).
symbol(_,N3,_):-N3=<0.

trianglestars(N,S):-tell('trianglefile.txt'),line(N,N,S),told. 
