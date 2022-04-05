USE tienda;
DELIMITER $$
 DROP FUNCTION IF EXISTS calcular_precio_medio$$
 CREATE FUNCTION calcular_precio_medio(nombre_fabricante VARCHAR(50)) 
 RETURNS FLOAT BEGIN DECLARE media FLOAT;
SET media = (SELECT MIN(precio) FROM producto
 WHERE codigo_fabricante = ( SELECT codigo FROM fabricante
 WHERE fabricante.nombre = nombre_fabricante));
RETURN media;
END $$
DELIMITER ; 
SELECT calcular_precio_medio('Asus');
