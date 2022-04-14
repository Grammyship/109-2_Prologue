prefixed_atom(X,Y) :- name(Y,Ylist), name(X, Tlist), 
                  conc1( Tlist, _, Ylist).
conc1([],L,L).
conc1([X|L1],L2,[X|L3]) :- conc1(L1,L2,L3).
