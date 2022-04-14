final(s3).
final(s7).

trans(s1,  a,  s1).
trans(s1,  a,  s2).
trans(s2,  b,  s3).
trans(s3,  b,  s4).
trans(s3,  c,  s7).
trans(s7,  b,  s5).
trans(s5,  a,  s6).

silent(s2,  s4).
silent(s6,  s7).

accepts( State,  []):- final( State).
accepts( State,  [ X| Rest]):- trans( State,  X,  State1),accepts( State1,  Rest).
accepts( State,  String):- silent( State,  State1),  accepts( State1,  String).
