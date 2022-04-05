#ACT2-FUNCION SIN SENTENCIAS SQL
#Creacion de funcion
DELIMITER $$
 DROP FUNCTION IF EXISTS calcular_dia$$ 
CREATE FUNCTION calcular_dia(dia INT)
 RETURNS VARCHAR(50) 
 BEGIN 
 DECLARE nombre_dia VARCHAR(50);
CASE dia 
	WHEN 1 THEN SET nombre_dia = 'Lunes';
	WHEN 2 THEN SET nombre_dia = 'Martes'; 
	WHEN 3 THEN SET nombre_dia = 'Miércoles'; 
	WHEN 4 THEN SET nombre_dia = 'Jueves'; 
	WHEN 5 THEN SET nombre_dia = 'Viernes'; 
	WHEN 6 THEN SET nombre_dia = 'Sábado'; 
	WHEN 7 THEN SET nombre_dia = 'Domingo';
	ELSE SET nombre_dia = 'Valor no válido';
 END CASE;
 RETURN nombre_dia;
END $$
DELIMITER ; 

#Prueba
SELECT calcular_dia(4);