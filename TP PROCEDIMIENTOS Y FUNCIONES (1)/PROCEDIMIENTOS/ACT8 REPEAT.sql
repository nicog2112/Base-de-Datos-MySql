#ACT8-repeat
#Creacion Base de datos
 DROP DATABASE IF EXISTS procedimientos;
 CREATE DATABASE procedimientos; 
 USE procedimientos;

#CREACION DE TABLAS
CREATE TABLE ejercicio ( numero INT UNSIGNED );

#CREACION PROCEDIMIENTO
DELIMITER $$ 
DROP PROCEDURE IF EXISTS calcular_numeros$$
 CREATE PROCEDURE calcular_numeros(IN valor_inicial INT UNSIGNED)
 BEGIN DECLARE numero INT UNSIGNED;
DELETE FROM ejercicio;
SET numero = valor_inicial;
REPEAT INSERT INTO ejercicio VALUES (numero); 
SET numero = numero - 1;
 UNTIL numero < 1 END REPEAT;
END $$
delimiter ;

#PRUEBA
CALL calcular_numeros(20); 
SELECT * FROM ejercicio;
