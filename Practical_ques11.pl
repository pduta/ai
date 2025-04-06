main:-
    write('enter the List : '),
    read(L),
    sumList(L,S),
    write('the sum of the given elements of the list is :'),
    write(S).

sumList([],0). %Base Case

% Recursive case: The sum of a list is the head plus the sum of the tail.
sumlist([H|T], S) :-
    sumlist(T, S1),
    S is H + S1.

