main :-
    write('Enter the number: '),
    read(X),
    write('Enter the list: '),
    read(L),
    (   memb(X, L) ->
        write(X), write(' is a member of the list.'), nl
    ;
        write(X), write(' is not a member of the list.'), nl
    ).

memb(X, [X|_]).  % If X is the head of the list
memb(X, [_|T]) :- memb(X, T).  % If X is not in the head, check the tail

/*
?- main.
Enter the number: 2.
Enter the list: |: [1,4,5].
2 is not a member of the list.
true.


?- main.
Enter the number: 2.
Enter the list: |: [4,2,6].
2 is a member of the list.
true.
*/
