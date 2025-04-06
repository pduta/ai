% Base case: If inserting at position 0, place I at the front of the list.
insert(I, 0, L, [I|L]).

% Recursive case: Move forward in the list until reaching position N.
insert(I, N, [H|T], [H|R]) :-
    N > 0,                 % Ensure N is positive
    N1 is N - 1,           % Decrease N by 1
    insert(I, N1, T, R).   % Recursive call on the tail

main:-
    write('enter the number to be inserted '),
    read(I),
    write('enter the postion where the number is to inserted '),
    read(N),
    write('enter the list :'),
    read(L),
    insert(I,N,L,R),
    write(R), write(' is the resultant list.').
