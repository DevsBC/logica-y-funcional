/* Juan Carlos Aranda Alonso */

/* Nombre, Edad, Sexo, Tipo de membresia, Persona autorizada */
membresia('juan perez', '22', 'H', 'A').
autoriza('juan perez', 'luz hernandez').
autoriza('juan perez', 'pedro martinez').

membresia('liliana hernandez', '23', 'M', 'A').

membresia('laura flores', '22', 'M', 'B').
autoriza('laura flores', 'laura manriquez').

membresia('jose perez', '23', 'H', 'C').
autoriza('jose perez', 'selene flores').
autoriza('jose perez', 'mariana hernandez').
autoriza('jose perez', 'liliana flores').

membresia('miguel lopez', '23', 'H', 'A').

membresia('mario flores', '25', 'H', 'A').
membresia('perla hernandez', '23', 'H', 'B').

membresiaAdicional(Nombre, Edad, Sexo, Tipo, Autorizado) :- 
    membresia(Nombre, Edad, Sexo, Tipo),autoriza(Nombre, Autorizado).


/*
RESULTADOS:

Cuales miembros principales pueden rentar peliculas de terror o de drama.
?- membresia(Principal, Edad, Genero, 'C').
Principal = 'jose perez',
Edad = '23',
Genero = 'H'.


Cuales miembros principales pueden rentar peliculas de ninos.
?- membresia(Principal, Edad, Genero, 'A').
Principal = 'juan perez',
Edad = '22',
Genero = 'H' ;
Principal = 'liliana hernandez',
Edad = '23',
Genero = 'M' ;
Principal = 'miguel lopez',
Edad = '23',
Genero = 'H' ;
Principal = 'mario flores',
Edad = '25',
Genero = 'H'.


Cuales miembros principales tienen membresías adicionales.
?- membresiaAdicional(Principal, Edad, Sexo, Tipo, Autorizado).
Principal = 'juan perez',
Edad = '22',
Sexo = 'H',
Tipo = 'A',
Autorizado = 'luz hernandez' ;
Principal = 'juan perez',
Edad = '22',
Sexo = 'H',
Tipo = 'A',
Autorizado = 'pedro martinez' ;
Principal = 'laura flores',
Edad = '22',
Sexo = 'M',
Tipo = 'B',
Autorizado = 'laura manriquez' ;
Principal = 'jose perez',
Edad = '23',
Sexo = 'H',
Tipo = 'C',
Autorizado = 'selene flores' ;
Principal = 'jose perez',
Edad = '23',
Sexo = 'H',
Tipo = 'C',
Autorizado = 'mariana hernandez' ;
Principal = 'jose perez',
Edad = '23',
Sexo = 'H',
Tipo = 'C',
Autorizado = 'liliana flores' ;


*/