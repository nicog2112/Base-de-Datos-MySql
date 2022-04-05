#e)	Procedure que visualice lo que paga cada alumno por el curso, y el número de asignaturas en las que tiene notas. 
#(Realice una segunda versión  ingresando  como parámetro el número del alumno)
#Visualizar lo siguiente:
#Cd_alumno     Nombre Alumno      Nombre Curso      Nº de Asignaturas     Importe 
DELIMITER $$

CREATE PROCEDURE procedure5sinparametros()
BEGIN
    SELECT a.NOMBRE , c.DENOMINACION,c.COSTE_MATRICULA,(SELECT count(*) from evaluaciones as e 
    join asignaturas as g on e.COD_ASIG = g.COD_ASIG
    JOIN alumnos AS l on l.NUM_ALUMNO=e.NUM_ALUMNO) AS C_NOTAS FROM alumnos as a 
    INNER JOIN cursos as c ON a.COD_CURSO = c.COD_CURSO;
END 
$$

DELIMITER ;