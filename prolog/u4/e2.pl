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

falla('falla de motor', general).
falla('falla de transmision', general).
falla('falla de chasis', general).
falla('falla de suspension', general).
falla('falla electrica', general).

resolucion(transmision, 'La transmision no funciona').
resolucion(motor, 'El motor esta danado').
resolucion(general, 'Hay una falla general').

diagnostico(A, B, C, D, E, Resolucion) :-
    falla(A, Causa),
    falla(B, Causa),
    falla(C, Causa),
    falla(D, Causa),
    falla(E, Causa),
    resolucion(Causa, Resolucion).

/*
RESULTADO:

?- diagnostico('falla de motor', 'falla de transmision', 'falla de chasis', 'falla de suspension', 'falla electrica', R). 
R = 'Hay una falla general'.

*/    