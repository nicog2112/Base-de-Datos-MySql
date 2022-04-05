#ACT4-FUNCION SIN SENTENCIAS SQL
#CREACION BASE DE DATOS
DROP DATABASE IF EXISTS test; 
CREATE DATABASE test; 
USE test;

#CREACION DE FUNCION
 DELIMITER $$ 
 
 CREATE FUNCTION calcular_numero_años(fecha_inicial DATE, fecha_final DATE) 
 RETURNS INT
 BEGIN 
 DECLARE dias INT;
 DECLARE años INT;
 SET dias = DATEDIFF(fecha_final, fecha_inicial); 
 SET años = dias / 365; 
 RETURN años; 
 END $$
DELIMITER ; 

#PRUEBA
SELECT calcular_numero_años('2020-10-01', '2015-10-01');
