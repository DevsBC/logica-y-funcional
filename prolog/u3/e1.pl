/* Juan Carlos Aranda Alonso */

alumno(juan).
alumno(mario).
alumno(lorena).
alumno(perla).
alumno(mayra).

estudia(juan, ingles).
estudia(juan, matematicas).
estudia(mario, ingles).
estudia(mario, logica).
estudia(lorena, matematicas).
estudia(lorena, fisica).
estudia(perla, ingles).
estudia(perla, fisica).

/*
RESULTADOS:

QUIENES CURSAN LA MATERIA DE INGLES?
?- estudia(X, ingles).
X = juan ;
X = mario ;
X = perla.

QUIENES SON ALUMNOS?
?- alumno(X).
X = juan ;
X = mario ;
X = lorena ;
X = perla ;
X = mayra.

QUIENES TIENEN MATERIAS (SE PUEDE REPETIR EL ALUMNO)?
?- estudia(Alumno, Materia).
Alumno = juan,
Materia = ingles ;
Alumno = juan,
Materia = matematicas ;
Alumno = mario,
Materia = ingles ;
Alumno = mario,
Materia = logica ;
Alumno = lorena,
Materia = matematicas ;
Alumno = lorena,
Materia = fisica ;
Alumno = perla,
Materia = ingles ;
Alumno = perla,
Materia = fisica.

QUE MATERIAS CURSA PERLA SANCHEZ?
?- estudia(perla, Materia).
Materia = ingles ;
Materia = fisica.

QUE MATERIAS CURSA JUAN PEREZ Y LORENA MEDINA?
?- estudia(juan, Materia),estudia(lorena, Materia).
Materia = matematicas.

*/