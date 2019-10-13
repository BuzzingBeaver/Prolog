sublist([],Y).
sublist([A|X],[A|Y]):-sublist(X,Y).
sublist(X,[A|Y]):-sublist(X,Y).
remove_every_other([],[]).
remove_every_other([X],[X]).
remove_every_other([A,_|X],[A|Y]):-remove_every_other(X,Y).
remove_nth(1,[A|X],X).
remove_nth(N,[A|X],[A|Y]):-N1 is N-1,remove_nth(N1,X,Y).
triplicate([A|X]):-sublist([A,A],X);triplicate(X).