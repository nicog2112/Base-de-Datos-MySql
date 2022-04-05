#c)	Obtener el número  de empleados en cada departamento.( crear la consulta y una vista con la misma)

select count(e.DNI) AS CANTIDAD ,d.NOMBRE_D  from empleados as e 
inner join departamentos as d on d.codigo = e.codigo
group by d.CODIGO;

create view puntoC as (select count(e.DNI) AS CANTIDAD ,d.NOMBRE_D  from empleados as e 
inner join departamentos as d on d.codigo = e.codigo
group by d.CODIGO)