#f)	Procedure que visualice por cada curso el alumno con más nota media. Si existen varios visualizarlos. 
#Crear una vista (VIEW) con la consulta utilizada.
#Visualizar lo siguiente:
#Cd_Curso     Nombre Curso    Cd_alumno     Nombre Alumno   Nota Media
DELIMITER $$

CREATE PROCEDURE procedure6()
BEGIN
    SELECT c.COD_CURSO,c.DENOMINACION,a.NUM_ALUMNO,a.NOMBRE,a.NOTA_MEDIA FROM cursos as c 
    INNER JOIN alumnos as a ON c.COD_CURSO = a.COD_CURSO
	GROUP BY (c.COD_CURSO) HAVING MAX(a.NOTA_MEDIA);
	END 
$$

DELIMITER ;

create view puntoF as (  SELECT c.COD_CURSO,c.DENOMINACION,a.NUM_ALUMNO,a.NOMBRE,a.NOTA_MEDIA FROM cursos as c 
    INNER JOIN alumnos as a ON c.COD_CURSO = a.COD_CURSO
	GROUP BY (c.COD_CURSO) HAVING MAX(a.NOTA_MEDIA));
    
call procedure6()