#ACT7-A-WHILE
#CREACION BASE DE DATO
DROP DATABASE IF EXISTS procedimientos; 
CREATE DATABASE procedimientos;
 USE procedimientos;
 
 #CREACION TABLA
CREATE TABLE cuadrados ( numero INT UNSIGNED, cuadrado INT UNSIGNED );

#CREACION PROCEDIMIENTO
DELIMITER $$
 DROP PROCEDURE IF EXISTS calcular_cuadrados$$ 
 CREATE PROCEDURE calcular_cuadrados(IN tope INT UNSIGNED)
 BEGIN 
 DECLARE numero INT UNSIGNED;
DELETE FROM cuadrados;
SET numero = 1;
 WHILE numero <= tope
 DO INSERT INTO cuadrados
 VALUES (numero, numero*numero); 
 SET numero = numero + 1;
 END WHILE;
END$$

#desactivar modo seguro mysql
SET SQL_SAFE_UPDATES = 0;
#prueba
 DELIMITER ; 
 CALL calcular_cuadrados(10);
 SELECT * FROM cuadrados;
DELETE FROM cuadrados;
