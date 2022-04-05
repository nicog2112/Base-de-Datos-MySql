#4.	Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.
select p.nombre,min(p.precio)as "precio" ,f.nombre from producto p
inner join fabricante f
on p.codigo = f.codigo

 