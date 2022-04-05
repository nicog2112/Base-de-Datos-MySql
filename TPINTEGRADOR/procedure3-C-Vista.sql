#c)	Procedure que visualice los datos de las notas de cada alumno, así como su nota media.
# Además crear una vista (VIEW) con la consulta utilizada.
DELIMITER $$

CREATE PROCEDURE procedure3()
BEGIN
    SELECT c.COD_CURSO,c.DENOMINACION,a.NOMBRE,e.COD_EVALUACION,e.COD_ASIG,e.NOTA,a.NOTA_MEDIA FROM cursos as c 
    INNER JOIN alumnos as a ON c.COD_CURSO = a.COD_CURSO
    INNER JOIN evaluaciones as e on a.NUM_ALUMNO = e.NUM_ALUMNO;
END 
$$

DELIMITER ;

create view puntoc as (  SELECT c.COD_CURSO,c.DENOMINACION,a.NOMBRE,e.COD_EVALUACION,e.COD_ASIG,e.NOTA,a.NOTA_MEDIA FROM cursos as c 
    INNER JOIN alumnos as a ON c.COD_CURSO = a.COD_CURSO
    INNER JOIN evaluaciones as e on a.NUM_ALUMNO = e.NUM_ALUMNO);
call procedure3()