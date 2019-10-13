 tran(eins,one).
 tran(zwei,two).
 tran(drei,three).
 tran(vier,four).
 tran(fuenf,five).
 tran(sechs,six).
 tran(sieben,seven).
 tran(acht,eight).
 tran(neun,nine). 
 listtran([],[]).
 listtran([G|A],[E|B]):-listtran(A,B),tran(G,E).
 %NextQuestion
 twice([],[]).
 twice([H|A],[H,H|A]):-twice(A,A).
 %Combine 2 lists
 combine([H1|[]],[H2|[]],[H1,H2]).
 combine([H1|X],[H2|Y],[H1,H2|B]):-combine(X,Y,B).