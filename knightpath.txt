jump( A/B , X/Y ):- (( X is A-1; X is A+1),( Y is B+2; Y is B-2));(( X is A-2; X is A+2),( Y is B+1; Y is B-1)), ( X >= 1, X =< 8),( Y >=1 , Y =< 8).

knightpath([X/Y]).
knightpath([A/B|[X/Y|List]]):- jump(A/B , X/Y), knightpath([X/Y|List]).