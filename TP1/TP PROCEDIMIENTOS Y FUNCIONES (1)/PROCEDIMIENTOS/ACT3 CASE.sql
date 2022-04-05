#ACT3-CASE
DELIMITER //
DROP PROCEDURE IF EXISTS calcular_nota//
CREATE PROCEDURE calcular_nota(IN nota FLOAT)
BEGIN
DECLARE calificacion VARCHAR(50);
CASE 
	when nota >= 0 AND nota < 5 THEN
		SET calificacion = 'Suspenso';
	when nota >=5 AND nota < 6 THEN
		SET calificacion = 'Aprobado';
	when nota >=6 AND nota < 7 THEN
		SET calificacion = 'Bien';
	when nota >= 7 AND nota < 9 THEN
		SET calificacion = 'Notable';
	when nota >=9 AND nota <= 10 THEN
		SET calificacion = 'Sobresaliente';
	ELSE
		SET calificacion = 'Nota no válida';

END CASE;
SELECT calificacion;
END//

DELIMITER ;
#comprobacion
CALL calcular_nota(6);
