%base case

fibonacci(1,1).
fibonacci(0,0).

%recursive case

fibonacci(Num, Res):-
    Num > 1,
    Num1 is Num - 1,
    Num2 is Num - 2,
    fibonacci(Num1, Res1),
    fibonacci(Num2, Res2),
    Res is Res1 + Res2.

start:-
    write('Enter Nth term: '),
    read(Number),
    fibonacci(Number, Result),
    write('The Nth term in fibonacci series is: '),
    write(Result).
