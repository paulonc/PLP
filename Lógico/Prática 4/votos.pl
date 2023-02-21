votos([],[],[]).
votos([[H,1] | T], [H|R], R2):- votos(T, R, R2).
votos([[H,2] | T], R1, [H|R]):- votos(T, R1, R).

main:-
    read(Lista),
    votos(Lista,R1,R2),
    writeln(R1),
    write(R2), halt.