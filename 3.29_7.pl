conc1([],L,L).
conc1([X|L1],L2,[X|L3]):- conc1(L1,L2,L3).

shiftNnumber( List, 0, List).
shiftNnumber( [X|List1], N, List3):-conc1(List1,[X],List2),N1 is N-1, shiftNnumber( List2, N1, List3) .