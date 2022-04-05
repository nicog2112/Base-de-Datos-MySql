USE colegio1;
DELIMITER $$ 
DROP FUNCTION IF EXISTS calcular_nota_media$$ 
CREATE FUNCTION calcular_nota_media(NOMBRE VARCHAR(50))
 RETURNS FLOAT
 BEGIN DECLARE media FLOAT;
SET media = (SELECT AVG(evaluaciones.NOTA)
 FROM EVALUACIONES 
 INNER JOIN asignaturas ON asignaturas.COD_ASIG = evaluaciones.COD_ASIG
 WHERE asignaturas.NOMBRE = NOMBRE);
RETURN media;
END$$
DELIMITER ; 

SELECT calcular_nota_media('MATEMATICAS2ESO');

