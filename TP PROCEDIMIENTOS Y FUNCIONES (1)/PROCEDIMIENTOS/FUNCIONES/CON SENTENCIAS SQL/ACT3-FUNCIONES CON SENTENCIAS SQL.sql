USE colegio1;
DELIMITER $$ 
DROP FUNCTION IF EXISTS calcular_nota_alta$$ 
CREATE FUNCTION calcular_nota_alta()
 RETURNS varchar (50)
 BEGIN 
 return(select a.nombre from alumnos a join evaluaciones e on e.NUM_ALUMNO-a.NUM_ALUMNO
 WHERE (SELECT MAX (evaluaciones.NOTA)FROM evaluaciones));
END$$
DELIMITER ; 


SELECT * FROM evaluaciones;
SELECT calcular_nota_alta();

