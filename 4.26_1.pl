gen( N, N2, S, []):- N > N2. 
gen( N1,  N2, S, [N1|List]) :- N1 =< N2,  M is N1+S,  gen(M,  N2, S, List).
