%assuming the definition of weights contains the vertices & the edges of the graph
weight(P,Q,20).
weight(Q,R,5).
weight(R,S,10).
findPath(X,Y,Path,L):-weight(X,Y,L),Path = [X,Y].
findPath(X,Y,[Path1,_|Path2],L1+L2):-findPath(X,Z,Path1,L1),findPath(Z,Y,Path2,L2).
%but this doesn't avoid loops