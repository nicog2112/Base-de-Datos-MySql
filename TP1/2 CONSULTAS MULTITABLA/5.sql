#5.	Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
select p.nombre,max(p.precio)as "precio",f.nombre from producto p
inner join fabricante f
on p.codigo = f.codigo