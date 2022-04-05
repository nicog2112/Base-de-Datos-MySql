#3.	Devuelve una lista con el código del producto, nombre del producto, código del fabricante
 #y nombre del fabricante, de todos los productos de la base de datos.
 
 select p.codigo,p.nombre,f.codigo,f.nombre as "nombre del fabricante" from producto p
inner join fabricante f
on p.codigo = f.codigo
 