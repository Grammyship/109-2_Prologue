squeeze1 :- get0( C), put( C), dorest( C).
dorest( 46) :- !.
dorest( 32) :- !, get( C), put( C), dorest( C).
dorest( Letter) :- squeeze1.
