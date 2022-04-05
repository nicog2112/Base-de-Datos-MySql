#ACT9-REPEAT
#Creacion Base de Datos
DROP DATABASE IF EXISTS procedimientos;
CREATE DATABASE procedimientos;
USE procedimientos;

#Creacion tablas.
CREATE TABLE pares (
numero INT UNSIGNED
);
CREATE TABLE impares (
numero INT UNSIGNED
);

#Creacion procedimiento
DELIMITER $$
DROP PROCEDURE IF EXISTS calcular_pares_impares$$
CREATE PROCEDURE calcular_pares_impares(IN tope INT UNSIGNED)
BEGIN
DECLARE numero INT UNSIGNED;
DELETE FROM pares;
DELETE FROM impares;
SET numero = 0;
REPEAT
IF numero % 2 = 0 THEN
INSERT INTO pares VALUES (numero);
ELSE
INSERT INTO impares VALUES (numero);
END IF;
SET numero = numero + 1;
UNTIL numero > tope
END REPEAT;
END $$
DELIMITER ;
#Prueba
CALL calcular_pares_impares(7); 
SELECT * FROM pares;
 SELECT * FROM impares;
