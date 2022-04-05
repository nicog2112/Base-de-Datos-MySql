#ACT1-FUNCION CON SENTENCIAS SQL

USE colegio1;
DELIMITER $$
DROP FUNCTION IF EXISTS calcular_numero_total_alumnos$$ 
CREATE FUNCTION calcular_numero_total_alumnos() 
RETURNS INT 
BEGIN 
DECLARE total INT; 
SET total = (SELECT COUNT(*) FROM alumnos);
 RETURN total;
 END$$
 DELIMITER ; 
 
 #PRUEBA
 SELECT calcular_numero_total_alumnos();

