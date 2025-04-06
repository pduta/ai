
% Base case
factorial(0, 1).

% Recursive case
factorial(Number, Res) :-
    Number > 0,
    PrevNumber is Number - 1,
    factorial(PrevNumber, PrevRes),
    Res is Number * PrevRes.

main :-
    write('Enter a number: '),
    read(Number),
    factorial(Number, Res),
    write('The factorial is: '), 
    write(Res).
