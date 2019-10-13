%assuming the definition of weights contains the connected vertices & the weights of the graph
weight(p,q,20).
weight(q,r,5).
weight(r,s,10).
%Defining undirected
edge(X,Y,L):-weight(X,Y,L);weight(Y,X,L).
% A path is found if one can traverse from X to Y.
findPath(X,Y,Path,L):- traverse(X,Y,[X],PathReversed,L),reverse(PathReversed,Path).
%Checked contains all the nodes one has passed through once
traverse(X,Y,Checked,[Y|Checked],L):-edge(X,Y,L).
%Checks if an edge is present between X and Z, and if Z is already a memeber of Checked, if not it is added for future references and total length is calculated.
traverse(X,Y,Checked,Path,L):- edge(X,Z,L1),Z\==Y,\+member(Z,Checked),traverse(Z,Y,[Z|Checked],Path,L2),L is L1+L2.
