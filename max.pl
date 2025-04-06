max(X,Y,M) :-
    ( X>= Y -> M = X; M = Y).


main:-
    write('Enter a number: '),
    read(X),
    write('Enter another number: '),
    read(Y),
    max(X,Y,M),
    write('The maximum is: '),
    write(M).
