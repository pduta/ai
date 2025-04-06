list_length([], 0).
evenLength([]).
oddLength([_]).

list_length([_|T],N):-
            list_length(T,N1),
            N is N1 + 1.

evenLength([_,_|T]):-
    evenLength(T).

oddLength([_,_|T]):-
    oddLength(T).

main:-
    write('enter the list :'),
    read(List),
    list_length(List,Length),
    write('The length of the list is :'),
    write(Length),nl,
    evenLength(List) ->
       write('the list has an even length.'),nl;
       write('ther list has an odd length.').

