main:-
    write('enter first number :'),
    read(N1),
    write('enter second number :'),
    read(N2),
    multi(N1,N2,R),
    write('the muliplication of the two numbers is :'),
    write(R).

/*multi(N1,N2,R):-
    R is N1*N2.
*/

%Using Recursion

multi(N1,0,0).
multi(0,N2,0).

multi(N1,N2,R):-
    N2>0,
    N2_1 is N2-1,
    multi(N1,N2_1,R1),
    R is N1+R1.

multi(N1,N2,R):-
    N2<0,
    N1_neg is -N1,
    N2_neg is -N2,
    multi(N1_neg, N2_neg, R).
    R is R1+N1.
