main1:-
    write('enter the list 1 :'),
    read(L1),
    write('enter the list 2 to be concatinated to list 1 :'),
    read(L2),
    concat1(L1,L2,L3),
    write('the concatinated list is :'),
    write(L3).

concat1([],L2,L2).

concat1([H|T],L2,[H|L3]):-
       concat1(T,L2,L3).
