DELIMITER //
DROP FUNCTION IF EXISTS calcular_nota//
CREATE function calcular_nota( NOMBRE varchar(50),COD_ASIG INT)
returns varchar(50)
BEGIN
	DECLARE nota float;
	DECLARE calificacion VARCHAR(50);
     SET nota = (SELECT e.NOTA
	FROM alumnos as a
	INNER JOIN evaluaciones as e ON e.NUM_ALUMNO = a.NUM_ALUMNO
    INNER JOIN asignaturas as g ON g.COD_ASIG = e.COD_ASIG
	WHERE a.NOMBRE = NOMBRE and g.COD_ASIG = COD_ASIG);
	IF nota >= 0 AND nota <= 5 THEN
		SET calificacion = 'DESAPROBADO';
	ELSEIF nota = 6 THEN
		SET calificacion = 'BIEN';
	ELSEIF nota >=7 AND nota <= 8 THEN
		SET calificacion = 'MUY BIEN';
	ELSEIF nota =9 THEN
		SET calificacion = 'DISTINGUIDO';
	ELSEIF nota = 10 THEN
		SET calificacion = 'SOBRESALIENTE';
	ELSE
		SET calificacion = 'Nota no válida';
	END IF;
	return calificacion;
END //
DELIMITER ;

#comprobacion
select calcular_nota('JUAN GOMEZ','1');

