#e)	Obtener los nombres de los departamentos que tienen más de 2 empleados.(utilizar subconsulta)

select d.NOMBRE_D  from departamentos as d 
where d.codigo in (SELECT e.CODIGO FROM empleados as e
GROUP BY e.CODIGO 
HAVING count(*) > 2);

select count(e.DNI) AS CANTIDAD ,d.NOMBRE_D  from empleados as e 
inner join departamentos as d on d.codigo = e.codigo
group by d.CODIGO;