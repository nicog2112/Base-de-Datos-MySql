#b)	Procedure que visualice los datos de los distintos cursos, los alumnos matriculados y la nota media de cada uno de los alumnos.
#(Realice una segunda versión  ingresando  como parámetro el código del curso)
DELIMITER $$

CREATE PROCEDURE procedure2()
BEGIN
    SELECT c.COD_CURSO,c.DENOMINACION,a.NOMBRE,a.NOTA_MEDIA FROM cursos as c 
    INNER JOIN alumnos as a ON c.COD_CURSO = a.COD_CURSO;
END 
$$

DELIMITER ;

call procedure2()