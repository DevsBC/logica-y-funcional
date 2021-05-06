/* Juan Carlos Aranda Alonso */

sintoma('malestar general', hepatitis).
sintoma('cansancio y falta de concentracion', hepatitis).
sintoma('fiebre', hepatitis).
sintoma('dolor muscular y articular', hepatitis).
sintoma('dolor de cabeza', hepatitis).
sintoma('fotofobia', hepatitis).
sintoma('sintomas digestivos', hepatitis).
sintoma('falta de apetito', hepatitis).
sintoma('nauseas', hepatitis).
sintoma('vomitos', hepatitis).
sintoma('diarrea', hepatitis).

sintoma('diarrea', gastroenteritis).
sintoma('nauseas', gastroenteritis).
sintoma('vomitos', gastroenteritis).
sintoma('dolor abdominal', gastroenteritis).

sintoma('dificultad para respirar', ah1n1).
sintoma('vomitos', ah1n1).
sintoma('diarrea', ah1n1).
sintoma('cambios bruscos en la frecuencia cardiaca', ah1n1).

tratamiento(ah1n1, 'AH1N1: tomar tempra una cucharada cada 12 horas y mejorales uno cada 12 horas').
tratamiento(gastroenteritis, 'Gastroenteritis: tomar omeprazol una cada 12 horas').
tratamiento(hepatitis, 'Hepatitis: tomar Ribavirina una cada 24 horas').


diagnostico(A, B, C, D, Tx) :- 
    sintoma(A, Enfermedad),
    sintoma(B,Enfermedad),
    sintoma(C, Enfermedad),
    sintoma(D, Enfermedad),
    tratamiento(Enfermedad, Tx).

 /*
RESULTADOS:

Tratamiento recomendado para los siguientes sintomas
?- diagnostico('diarrea', 'vomitos', 'nauseas', 'falta de apetito', Tx).
Tx = 'Hepatitis: tomar Ribavirina una cada 24 horas';


Enfermedades con sintomas comunes
?- sintoma('vomitos', Enfermedad).
Enfermedad = hepatitis ;
Enfermedad = gastroenteritis ;
Enfermedad = ah1n1.

?- sintoma('vomitos', Enfermedad),sintoma('nauseas', Enfermedad).
Enfermedad = hepatitis ;
Enfermedad = gastroenteritis ;

Tratamiento para AH1N1
?- tratamiento(ah1n1, Tx).
Tx = 'AH1N1: tomar tempra una cucharada cada 12 horas y mejorales uno cada 12 horas'.


Sintomas para la gastroenteritis
?- sintoma(Sintoma, gastroenteritis).
Sintoma = diarrea ;
Sintoma = nauseas ;
Sintoma = vomitos ;
Sintoma = 'dolor abdominal'.

 */   