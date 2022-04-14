:- op(900, fy, not).
not( P):- P, !, fail; true.

set_difference([],_,[]).
set_difference( [X|S1] , S2 , A ):- member( X , S2 ),set_difference( S1 , S2 , A ), !.
set_difference( [X|S1] , S2 ,[X|A] ):- set_difference( S1 , S2 , A ).
