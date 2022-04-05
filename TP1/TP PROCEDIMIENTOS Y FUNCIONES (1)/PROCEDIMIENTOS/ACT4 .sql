#ACT4
use procedimientos; 

DELIMITER $$
CREATE PROCEDURE calcular_dia( dia int)
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
 select nombre_dia;
END $$
DELIMITER ; 

#COMPROBACION 
call calcular_dia(8);