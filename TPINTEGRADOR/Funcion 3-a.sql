#a)	Realice una función que obtenga la nota promedio de un alumno, ingresando como parámetro, el código del Alumno. 
##6.	Escribe una función para la base de datos “La Esperanza” que devuelva el valor medio de las notas obtenidas en las 
##evaluaciones de una determinada asignatura que se recibirá como parámetro de entrada. El parámetro de entrada será el nombre del curso.

DELIMITER $$ 
DROP FUNCTION IF EXISTS calcular_nota_promedio$$ 
CREATE FUNCTION calcular_nota_promedio(NUM_ALUMNO INT(10))
 RETURNS FLOAT
 BEGIN 
 DECLARE promedio FLOAT;
SET promedio = (SELECT AVG(evaluaciones.NOTA)
 FROM EVALUACIONES 
 INNER JOIN asignaturas ON asignaturas.COD_ASIG = evaluaciones.COD_ASIG
 WHERE EVALUACIONES.NUM_ALUMNO = NUM_ALUMNO);
RETURN promedio;
END$$
DELIMITER ; 

SELECT calcular_nota_promedio('110');