/* Juan Carlos Aranda Alonso */

/* falla sintoma origen */
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

/*
RESULTADOS:

Si sale humo que fallas es?
?- falla(humo, Origen).
Origen = motor.

Si truena al andas que falla es?
?- falla('truena al andar', Origen).
Origen = transmision.

Si gasta aceite que falla es?
?- falla('gasta aceite', Origen).
Origen = transmision.

Que fallas puede tener el motor?
?- fallas(Falla, motor).
Falla = humo ;
Falla = 'se apaga' ;
Falla = 'consume gas' ;
Falla = 'baja compresion' ;
Falla = 'falta de potencia' ;
Falla = 'tira agua'.

Que fallas puede tener la transmisión?.
?- fallas(Falla, transmision).
Falla = 'no avanza' ;
Falla = 'truena al andar' ;
Falla = 'no hace cambio' ;
Falla = 'gasta aceite' ;
Falla = 'no acelera' ;
Falla = 'no da reversa'.

*/