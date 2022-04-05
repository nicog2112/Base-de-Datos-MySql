#10.	Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.
select p.nombre,p.precio from producto p
inner join fabricante f
on p.codigo = f.codigo 
where p.nombre like '%e'