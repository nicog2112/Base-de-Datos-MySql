#11.	Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.
select p.nombre,p.precio from producto p
inner join fabricante f
on p.codigo = f.codigo 
where p.nombre like '%w%'
#NO HAY PRODUCTO QUE CONTENGA W EN SU NOMBRE