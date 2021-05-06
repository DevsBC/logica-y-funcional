/* Juan Carlos Aranda Alonso */

falla('humo', motor).
falla('se apaga', motor).
falla('consume gas', motor).
falla('baja compresion', motor).
falla('falta de potencia', motor).
falla('tira agua', motor).

falla('no avanza', transmision).
falla('truena al andar', transmision).
falla('no hace cambio', transmision).
falla('gasta aceite', transmision).
falla('no acelera', transmision).
falla('no da reversa', transmision).

resolucion(transmision, 'La transmision no funciona').
resolucion(motor, 'El motor esta danado').

diagnostico(A, B, C, D, Resolucion) :-
    falla(A, Causa),
    falla(B, Causa),
    falla(C, Causa),
    falla(D, Causa),
    resolucion(Causa, Resolucion).

/*
RESULTADO:

Diagnostico para los siguiente sintomas
?- diagnostico('no avanza', 'truena al andar', 'no hace cambio', 'no acelera', R).
R = 'La transmision no funciona'.

?- diagnostico('humo', 'se apaga', 'baja compresion', 'tira agua', R).
R = 'El motor esta danado'.

*/    