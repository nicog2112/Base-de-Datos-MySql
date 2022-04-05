#act8-loop
#creacion de base de datos
DROP DATABASE IF EXISTS procedimientos; 
CREATE DATABASE procedimientos; 
USE procedimientos;

#creacion de tablas
CREATE TABLE ejercicio ( numero INT UNSIGNED);

#creacion de procedimiento
DELIMITER $$
 DROP PROCEDURE IF EXISTS calcular_numeros$$ 
 CREATE PROCEDURE calcular_numeros(IN valor_inicial INT UNSIGNED) 
 BEGIN DECLARE numero INT UNSIGNED;
DELETE FROM ejercicio;
SET numero = valor_inicial;
bucleloop: LOOP INSERT INTO ejercicio VALUES (numero);
 SET numero = numero - 1;
IF numero < 1 THEN LEAVE bucleloop;
 END IF; 
 END LOOP;
END $$
DELIMITER ; 

#PRUEBA
CALL calcular_numeros(25);
 SELECT * FROM ejercicio;

