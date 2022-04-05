-- Paso 1 
DROP DATABASE IF EXISTS procedimientos;
 CREATE DATABASE procedimientos;
 USE procedimientos;
-- Paso 2 
CREATE TABLE cuadrados ( numero INT UNSIGNED, cuadrado INT UNSIGNED );
-- Paso 3 
DELIMITER $$ 
 
CREATE PROCEDURE calcular_cuadrados(IN tope INT UNSIGNED)
 BEGIN 
 DECLARE numero INT UNSIGNED;
DELETE FROM cuadrados;
SET numero = 1; 
bucleloop: LOOP
IF numero <= tope DO 
INSERT INTO cuadrados VALUES (numero, numero*numero);
 SET numero = numero + 1; 
 ITERATE bucleloop; 
 END IF;
 LEAVE bucleloop;
 END LOOP;
END $$
DELIMITER ;
-- Paso 4 
DELIMITER ; 
CALL calcular_cuadrados(10);
 SELECT * FROM cuadrados;

