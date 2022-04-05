#PROCEDURE 2 VERSION 2 #(Realice una segunda versión  ingresando  como parámetro el código del curso)
DELIMITER $$

CREATE PROCEDURE procedurebparametro(in curso INT)
BEGIN
    SELECT c.COD_CURSO,c.DENOMINACION,a.NOMBRE,a.NOTA_MEDIA FROM cursos as c 
    INNER JOIN alumnos as a ON c.COD_CURSO = a.COD_CURSO
	where c.COD_CURSO = curso;
END 
$$

DELIMITER ;

call procedurebparametro(12)
