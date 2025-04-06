
1
12th
A
Archived classes
Settings
Practical Q1 Family Tree
%Facts
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
female(pam).
female(liz).
female(ann).
male(bob).
male(pat).
male(jim).
male(tom).



% a. Grandparent

grandparent(X,Y):-parent(X,Z),parent(Z,Y).

/*
 Running for different test cases:

?-
|    grandparent(pam,pat).
true.

?- grandparent(pam,bob).
false.

*/


% b. Grandchild

grandchild(X,Y):-parent(Y,Z), parent(Z,X).


/*
 Running for different test cases:

 ?- grandchild(pat,tom).
true
?- grandchild(pat,bob).
false.

*/



% c. offspring

offspring(X,Y):-parent(Y,X).

/*
 Running for differenet test cases:

?- offspring(bob,pam).
true.

?- offspring(jim,pam).
false.

*/



% d. Mother

mother(X,Y):- parent(X,Y),female(X).

/*
 Running for different test cases:

 ?- mother(pam,bob).
true.

?- mother(tom,bob).
false.

 */



% e. Sister

different(X,Y):- X \= Y.
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X), different(X,Y).

/*
Running for different test cases

?- sister(ann,pat).
true.

?- sister(pam,tom).
false.

*/



% F. Does two people have common parent


commonparent(X,Y):-parent(Z,X),parent(Z,Y).

/*
Running for different test cases:

?- commonparent(ann,pat).
true.

?- commonparent(pat,liz).
false.

*/



% g. Has a child


haschild(X):- parent(X,_).

/*
Running for different test cases:

?- haschild(bob).
true

?- haschild(liz).
false.

*/



% h. Predecessor (direct and indirect) using recursion

predecessor(X,Z):- parent(X,Z).  %Direct case
predecessor(X,Z):- parent(X,Y), predecessor(Y,Z).   %Indirect case


/*
Running for different test cases:

?- predecessor(tom,jim).
true .

?- predecessor(pam,bob).
true .

?- predecessor(pat,bob).
false.

*/



/*
?-parent(jim,X).
false.

?- parent(X,jim).
X = pat.

?- parent(pam,X),parent(X,pat).
X = bob

?- parent(pam,X),parent(X,Y),parent(Y,jim).
X = bob,
Y = pat.

Who is Pat's parent?
bob

Does Liz have a child?
No

Who is Pat's grandparent?
pam and tom


*/

% Define the relation aunt(X,Y) in terms of the relations parent and
% sister.


aunt(X,Y):- parent(Z,Y),sister(X,Z).


/*

?- parent(pam,bob).
true

?- mother(pam,ann).
false.

?- grandparent(pam,ann).
true.

?- grandparent(bob,jim).
true.

*/
