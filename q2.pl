sublist([],Y).
sublist([A|X],[A|Y]):-sublist(X,Y).
sublist(X,[A|Y]):-sublist(X,Y).
