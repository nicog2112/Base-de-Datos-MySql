#Actividad5
Use la_esperanza;
#PROCEDIMIENTO
DELIMITER $$
 DROP PROCEDURE IF EXISTS alumnos_del_curso$$
 CREATE PROCEDURE alumnos_del_curso(IN COD_CURSO int) 
 BEGIN 
 SELECT * FROM alumnos
 WHERE alumnos.COD_CURSO = COD_CURSO; 
 END $$
 DELIMITER ;

#COMPROBACION
CALL alumnos_del_curso(11);