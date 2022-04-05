#6.	Devuelve una lista de todos los productos del fabricante Lenovo.

select * from producto p
inner join fabricante f
on p.codigo = f.codigo
where f.nombre = "lenovo"