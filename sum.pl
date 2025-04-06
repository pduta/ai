sum(X, Y, Sum) :-
    Sum is X + Y.


main :-
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),
    sum(X, Y, Sum),
    write(Sum).
