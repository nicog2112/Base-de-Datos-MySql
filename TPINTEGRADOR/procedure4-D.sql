#d)	Procedure que visualice el Certificado Analítico de Cada Alumno. 
#Un Certificado Analítico es un informe que muestra la situación actual de un alumno, mostrando datos de las notas obtenidas por cada materia.
#La salida del procedimiento, deberá tener el siguiente formato. 
DELIMITER $$

CREATE PROCEDURE procedure4(iN alumno INT)
BEGIN
    SELECT a.NOMBRE AS NOMBRE,c.DENOMINACION as CURSO,d.NOMBRE_DEPAR as DEPARTAMENTO,g.NOMBRE as ASIGNATURA,e.NOTA FROM cursos as c 
    INNER JOIN alumnos as a ON c.COD_CURSO = a.COD_CURSO
    iNNER JOIN asignaturas as g on c.COD_CURSO = g.COD_CURSO
    INNER JOIN departamentos as d on g.COD_DEPAR = d.COD_DEPAR
    INNER JOIN evaluaciones as e on a.NUM_ALUMNO = e.NUM_ALUMNO;
END 
$$

DELIMITER ;
call procedure4(110)
