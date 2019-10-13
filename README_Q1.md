README

The prolog program checks if there exists a path between two given vertices in a weighted undirected graph G = (V, E). The weight on an edge (v1, v2) represents the distance between the vertices v1 and v2 {vi V; and (vi, vj) E}. 

How to implement:
First, a knowledge base about the graph should be created by the user. The predicate should be of form weight(v1,v2,L) where v1 and v2 are two vertices connected by an edge of length L. After that the user should input ?-findPath(p, r, Path, L), where p and q are the vertices of interest. Path and L are variables which will return an ordered list of vertices in the path and the length of the path respectively. An alternate path if it exists, is printed on each press of a semi colon button. It returns no, if no path exists.
Assumptions:
The given graph is not a multigraph or a loop graph.
Cycles in the path have been avoided. No path containing a loop is printed.
The vertices are not repeated in the path as we have created a list ‘check’ which keeps track of the vertices we have already visited. This avoids loops.
The path may not be unique.
reverse(?List1, ?List2) and member(?Elem, ?List) predicates have been used directly as they are defined in the SWI-Prolog library.

Note: The program was tested on the online prolog compiler available at https://swish.swi-prolog.org/ and on SWI-Prolog, threaded, 64 bits, version 8.0.3.  In this compiler true and false are displayed in place of yes and no. These keywords are assumed to be synonymous.
