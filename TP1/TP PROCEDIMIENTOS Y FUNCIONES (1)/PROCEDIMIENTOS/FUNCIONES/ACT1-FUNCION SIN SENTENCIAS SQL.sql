#funcion actividad1
#Creacion de funcion
DELIMITER $$
DROP FUNCTION IF EXISTS es_par$$
CREATE FUNCTION es_par(numero INT)
RETURNS BOOLEAN
BEGIN
	DECLARE par BOOLEAN;
	IF numero % 2 = 0 THEN
SET par = TRUE;
ELSE
SET par = FALSE;
END IF;
		RETURN par;
END$$
delimiter ;

#prueba
SELECT es_par(3);
