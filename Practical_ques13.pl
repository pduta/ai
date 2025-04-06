maxList([M],M).  %Base Case , If the list has only one element, that element is the maximum

% Recursive case, Comparing the head with the maximum of the tail.
maxList([H|T],M):-
    maxList(T,M1),
   %M is max(H,M1). % using built in max function to find maximum of H and M1
    (H >= M1 -> M = H ; M = M1 ).

main:-
    write('enter the list :').
    read(L),
    maxList(L,M),
    write('the maximum element of the list is :'),
    write(M).
