#Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Utilizando el operador IN.
select * from producto p
inner join fabricante f
on p.codigo = f.codigo 
where f.codigo in (1,3,5)