squeeze2 :- get0(C1), get0(C2), dorest(C1,C2).
dorest(46, _):- put(46), !.
dorest(32,46):- put(46), !.
dorest(32,44):- put(44), get0(C1), get0(C2), dorest(C1,C2).
dorest(32,32):- get( C), dorest(32,C).
dorest(32,C1):- put(32), get0(C2), dorest(C1,C2).
dorest(C1,C2):- put(C1), get0(C3), dorest(C2,C3).

