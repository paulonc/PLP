final(1930, "Uruguai", "Argentina").
final(1934, "Italia", "Tchecoslovaquia").
final(1938, "Italia", "Hungria").
final(1950, "Uruguai", "Brail").
final(1954, "Alemanha", "Hungria").
final(1958, "Brasil", "Suecia").
final(1962, "Brasil", "Tchecoslovaquia").
final(1966, "Inglaterra", "Alemanha").
final(1970, "Brasil", "Italia").
final(1974, "Alemanha", "Holanda").
final(1978, "Argentina", "Holanda").
final(1982, "Italia", "Alemanha").
final(1986, "Argentina", "Alemanha").
final(1990, "Alemanha", "Argentina").
final(1994, "Brasil", "Italia").
final(1998, "Franca", "Brasil").
final(2002, "Brasil", "Alemanha").
final(2006, "Italia", "Franca").
final(2010, "Espanha", "Holanda").
final(2014, "Alemanha", "Argentina").
final(2018, "Franca", "Croacia").

campeao(A,C,V):- final(A,C,V).

main:-
    read(A),
    campeao(A,C,V),
    write("Campeao : "),
    write(C), nl,
    write("Vice : "),
    write(V), halt.