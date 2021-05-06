/* Juan Carlos Aranda Alonso */

habla('juan perez', ingles).
habla('juan perez', espanol).
habla('juan perez', frances).

habla('liliana hernandez', frances).
habla('liliana hernandez', ingles).

habla('laura flores', espanol).

habla('jose perez', ingles).
habla('jose perez', frances).

habla('perla hernandez', ingles).
habla('perla hernadez', espanol).

esDe('Estados Unidos', ingles).
esDe('Mexico', espanol).
esDe('Francia', frances).
esDe('Espana', espanol).
esDe('Canada', frances).

puedeViajarA(Nombre, Idioma, Pais) :- habla(Nombre, Idioma),esDe(Pais, Idioma).

/*
RESULTADOS:
Cuales personas se pueden comunicar entre si?
?- habla(Persona, ingles),habla(Persona, frances).
Persona = 'juan perez' ;
Persona = 'jose perez' ;

Que personas hablan ingles?
habla(Persona, ingles).
Persona = 'juan perez' ;
Persona = 'liliana hernandez' ;
Persona = 'jose perez' ;
Persona = 'perla hernandez'.

En que pais puede la persona viajar sin tener problema de idioma?
?- puedeViajarA(Nombre, ingles, Pais).
Nombre = 'juan perez',
Pais = 'Estados Unidos' ;
Nombre = 'liliana hernandez',
Pais = 'Estados Unidos' ;
Nombre = 'jose perez',
Pais = 'Estados Unidos' ;
Nombre = 'perla hernandez',
Pais = 'Estados Unidos'.

?- puedeViajarA('perla hernandez', ingles, Pais). 
Pais = 'Estados Unidos'.

?- puedeViajarA('liliana hernandez', Idioma, Pais).
Idioma = frances,
Pais = 'Francia' ;
Idioma = frances,
Pais = 'Canada' ;
Idioma = ingles,
Pais = 'Estados Unidos'.

*/