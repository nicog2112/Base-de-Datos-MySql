#ACT3-FUNCION SIN SENTENCIAS SQL
#Creacion de funcion
DELIMITER $$
DROP FUNCTION IF EXISTS calcular_mayor$$ 
CREATE FUNCTION calcular_mayor(a FLOAT, b FLOAT, c FLOAT) 
RETURNS FLOAT 
BEGIN DECLARE mayor FLOAT;
	IF a >= b AND a >= c THEN 
		SET mayor = a;
	ELSEIF b >= a AND b >= c THEN
		SET mayor = b; 
	ELSE 
		SET mayor = c; END IF;
	RETURN mayor;
END $$
DELIMITER ; 

#prueba
SELECT calcular_mayor(4, 8, 8);
