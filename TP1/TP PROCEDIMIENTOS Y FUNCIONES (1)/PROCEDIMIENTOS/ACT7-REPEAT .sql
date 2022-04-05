#ACT7-B-REPEAT
#CREACION BASE DE DATOS
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
 REPEAT INSERT INTO cuadrados VALUES (numero, numero*numero); 
 SET numero = numero + 1;
 UNTIL numero > tope 
 END REPEAT;
 END $$
 
 DELIMITER ;
 #PRUEBA
 CALL calcular_cuadrados(10);
SELECT * FROM cuadrados;
DELETE FROM cuadrados;



