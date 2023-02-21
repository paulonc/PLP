marcar(_, [], []).
marcar(L, [L|T], Resultado):- Resultado = [L, '-'|R], marcar(L, T, R).
marcar(L, [H|T], [H|R]):- marcar(L,T,R).

main:-
    read_line_to_string(user_input,Letra),
    string_chars(Letra, [H|_]),
    read_line_to_string(user_input, Frase),
    string_chars(Frase,Split),
    marcar(H, Split, R),
    string_chars(Resultado,R),
    write(Resultado), halt.