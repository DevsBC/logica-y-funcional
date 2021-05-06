/* Juan Carlos Aranda Alonso */

/* Nombre, Edad, Sexo, Tipo de membresia */
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

Miembros principales que cuentan con categoria A = Solo ninos
?- membresia(Nombre, Edad, Sexo, 'A').
Nombre = 'juan perez',
Edad = '22',
Sexo = 'H' ;
Nombre = 'liliana hernandez',
Edad = '23',
Sexo = 'M' ;
Nombre = 'miguel lopez',
Edad = '23',
Sexo = 'H' ;
Nombre = 'mario flores',
Edad = '25',
Sexo = 'H'.

Nombres de los miembros adicionales basado de la categoria A = Solo Ninos
membresiaAdicional(Nombre, Edad, Sexo, 'A', Autorizado).
Nombre = 'juan perez',
Edad = '22',
Sexo = 'H',
Autorizado = 'luz hernandez' ;
Nombre = 'juan perez',
Edad = '22',
Sexo = 'H',
Autorizado = 'pedro martinez' ;


Nombres de los miembros principales y adicionales basado de la categoria A = Solo Ninos
membresiaAdicional(Nombre, Edad, Sexo, 'A', Autorizado).
Principal = 'juan perez',
Edad = '22',
Sexo = 'H',
Adicional = 'luz hernandez' ;
Principal = 'juan perez',
Edad = '22',
Sexo = 'H',
Adicional = 'pedro martinez' ;

*/
