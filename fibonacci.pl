fib(N) :-
 fib1(N);
 fib2(N);
 fib3(N).

fib1(N) :-
 N = 0.

fib2(N) :-
 Z is 5*N**2 - 4,
 is_perfect_square(Z).

fib3(N) :-
 Z is 5*N**2 + 4,
 is_perfect_square(Z).

is_perfect_square(N) :-
 between(1, inf, N),
 S is floor(sqrt(N)),
 N is S * S.
