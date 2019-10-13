README

The zip file contains SWI Prolog programs for the following predicates:

1.sublist(X,Y): the command gives true if the list X is a sublist of list Y, false otherwise. A sublist is defined as the original list, in the same order, but with no or some elements removed.
How to implement:
Type ?-sublist(X,Y) where X and Y are valid lists.
Assumptions
An empty list is a sublist of every list.
If either X or Y are not atoms then garbage values are returned. This should be avoided.
There are no alternate cases as it tests two given lists at a time.
The user passes valid arguments.

2. has_triplicate(X): true if list X contains at least three copies of an element. It also prints the element which is triplicated.
How to implement:
Type ?- has_triplicate(X), where X is a valid list.



3. remove_nth(N,X,Y): prints list Y which is the list X with its Nth element removed. It returns true if Y is the list with Nth element removed, false otherwise. If X does not have an Nth element, it returns false.
How to implement:
Type  ?-remove_nth(N,X,Y) where X is a valid list. N is an integer greater than zero and Y can either be a variable or a valid list.
Assumptions
N > 0 . If N is less than or equal to zero, then it returns false.
The list returned by it is unique and there are no alternate cases.
Empty lists are not considered and they should be avoided. It will always return false, if executed.
The user passes valid arguments.

4. remove_every_other(X,Y): prints out a list Y which is the list X with every other element removed. It returns true if Y is a sublist of X, false otherwise. 
How to implement:
Type  ?-remove_every_other(X,Y) where X is a valid list. Y can either be a variable or a valid list.

Assumptions:
As per question both the lists should have the same first element, so elements at even places are removed after executing this predicate. 
Y is a unique list and no alternative solutions exist. 
