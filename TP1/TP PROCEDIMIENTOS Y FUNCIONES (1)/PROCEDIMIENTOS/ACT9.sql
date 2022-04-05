#procedimiento act 9
-- Paso 1 
DROP DATABASE IF EXISTS procedimientos; 
CREATE DATABASE procedimientos;
 USE procedimientos;
-- Paso 2 
CREATE TABLE pares ( numero INT UNSIGNED );
CREATE TABLE impares ( numero INT UNSIGNED );
-- Paso 3 
DELIMITER $$
 DROP PROCEDURE IF EXISTS calcular_pares_impares$$ 
 CREATE PROCEDURE calcular_pares_impares(IN tope INT UNSIGNED) 
 BEGIN DECLARE numero INT UNSIGNED;
 DELETE FROM pares; DELETE FROM impares;
SET numero = 0; WHILE numero <= tope DO
IF numero % 2 = 0 THEN -- Si el número es par
 INSERT INTO pares VALUES (numero); 
 ELSE -- Si el número es impar 
 INSERT INTO impares VALUES (numero); 
 END IF;
SET numero = numero + 1; 
END WHILE;
END$$

DELIMITER ;
#EJECUCION
DELETE FROM pares; 
DELETE FROM impares;

#CONSULTAR
CALL calcular_pares_impares(7); 
SELECT * FROM pares; 
SELECT * FROM impares;
