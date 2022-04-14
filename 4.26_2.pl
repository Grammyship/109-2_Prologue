jumpto(X/Y, A/B):- A is X+2, B is Y+1.
jumpto(X/Y, A/B):- A is X+1, B is Y+2.
jumpto(X/Y, A/B):- A is X-1, B is Y+2.
jumpto(X/Y, A/B):- A is X-2, B is Y+1.
jumpto(X/Y, A/B):- A is X-2, B is Y-1.
jumpto(X/Y, A/B):- A is X-1, B is Y-2.
jumpto(X/Y, A/B):- A is X+1, B is Y-2.
jumpto(X/Y, A/B):- A is X+2, B is Y-1.

jump(X/Y, A/B):- jumpto(X/Y, A/B), A>=1, B>=1, A=<8, B=<8.

Knightpath([A,B|[]]):- jump(A,B).
Knightpath([A,B|Path]):- jump(A,B), Knightpath([B|Path]).