length1( [], 0).
length1( [ _| Tail], N) :- length1( Tail, N1), N is 1 + N1.

pos(X,Z):- X>0,Z = X.
pos(X,Z):- X<0,Z = 0.

p_sumlist([] , 0 ).
p_sumlist([X|Tail], Sum):- p_sumlist(Tail,Sum1) , pos(X,Y) , Sum is Sum1 + Y.

possum( N_list, N, Sum):- length1(N_list ,N) , p_sumlist(N_list,Sum).