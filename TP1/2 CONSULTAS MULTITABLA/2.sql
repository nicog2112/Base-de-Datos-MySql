#2.	Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. 
#Ordene el resultado por el nombre del fabricante, por orden alfabético.

Select p.nombre, p.precio,f.nombre as fabricante from producto p
inner join fabricante f
on p.codigo = f.codigo
order by f.nombre asc