subsum([], 0, []).
subsum([X|S], N, Subset) :-subsum(S, N, Subset);
			   N1 is N-X, Subset = [X|L], subsum(S,N1,L).