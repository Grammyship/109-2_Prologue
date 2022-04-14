conc1([], L, L).
conc1([X | L1], L2, [X | L3]) :- conc1(L1, L2, L3).

reverse1([X],[X]).
reverse1([X|L1],L2):- reverse1(L1,L), conc1(L,[X],L2).