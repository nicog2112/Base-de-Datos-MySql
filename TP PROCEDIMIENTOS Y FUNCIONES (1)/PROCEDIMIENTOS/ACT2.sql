#Escribe un procedimiento que reciba un número real de entrada, que representa 
#el valor de la nota de un alumno, y muestre un mensaje indicando qué nota ha 
#obtenido teniendo en cuenta las siguientes condiciones:
# [0,5) = Insuficiente [5,6) = Aprobado [6, 7) = Bien [7, 9) = Notable [9, 10] = Sobresaliente 
#En cualquier otro caso la nota no será válida. 

DELIMITER //
CREATE PROCEDURE calcular_nota(IN nota FLOAT)
BEGIN
	DECLARE calificacion VARCHAR(50);
	IF nota >= 0 AND nota < 5 THEN
		SET calificacion = 'Suspenso';
	ELSEIF nota >=5 AND nota < 6 THEN
		SET calificacion = 'Aprobado';
	ELSEIF nota >=6 AND nota < 7 THEN
		SET calificacion = 'Bien';
	ELSEIF nota >= 7 AND nota < 9 THEN
		SET calificacion = 'Notable';
	ELSEIF nota >=9 AND nota <= 10 THEN
		SET calificacion = 'Sobresaliente';
	ELSE
		SET calificacion = 'Nota no válida';
	END IF;
	SELECT calificacion;
END //
DELIMITER ;

#comprobacion
CALL calcular_nota(4);

