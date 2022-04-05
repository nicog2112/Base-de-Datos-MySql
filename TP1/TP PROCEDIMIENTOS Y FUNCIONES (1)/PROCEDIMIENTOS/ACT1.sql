 #2. Escribe un procedimiento que reciba un número real de entrada y 
 #muestre un mensaje indicando si el número es positivo, negativo o cero. 
use procedimientos;
DELIMITER //
#crear procedimiento
CREATE PROCEDURE comprobar_numero(IN numero FLOAT)
BEGIN
	IF numero > 0 THEN #si el numero es mayor a 0
		SELECT 'Número positivo';
	ELSEIF numero < 0 THEN # si el numero es menor a 0
		SELECT 'Número negativo'; 
	ELSE 				#si el numero es igual a 0.
		SELECT 'El número es 0';
	END IF;
END //

DELIMITER ;
#comprobacion
CALL comprobar_numero(0);