operacoes((0, _), R) :- write(R), halt.

operacoes((+, N), R) :- R1 is R + N, read(Y), operacoes(Y, R1).  
operacoes((-, N), R) :- R1 is R - N, read(Y), operacoes(Y, R1).  
operacoes((*, N), R) :- R1 is R * N, read(Y), operacoes(Y, R1).
operacoes((/, N), R) :- R1 is R / N, read(Y), operacoes(Y, R1).

main :-
    read(X),
    operacoes((X), 0).