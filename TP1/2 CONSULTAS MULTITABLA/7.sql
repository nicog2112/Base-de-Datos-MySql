#Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que $200
select * from producto p
inner join fabricante f
on p.codigo = f.codigo 
where f.nombre = "crucial" and p.precio > 200