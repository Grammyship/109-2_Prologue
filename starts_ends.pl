starts(Atom, Char):-name(Atom,[X|_]), name(Char,[Y]), X == Y.

conc1([],L,L).
conc1([X|L1],L2,[X|L3]) :- conc1(L1,L2,L3).

ends(Atom, Char):-name(Atom,L), name(Char,Y), conc1(_,Y,L).
