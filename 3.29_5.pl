sumlist([],0).
sumlist([X|Tail], Sum):- sumlist(Tail,Sum1) , Sum is Sum1 + X.
