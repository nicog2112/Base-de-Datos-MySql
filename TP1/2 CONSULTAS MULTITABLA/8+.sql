#8.	Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Sin utilizar el operador IN.
select * from producto p
inner join fabricante f
on p.codigo = f.codigo 
where f.codigo between 1 and 5
and  mod(f.codigo, 2) <> 0

