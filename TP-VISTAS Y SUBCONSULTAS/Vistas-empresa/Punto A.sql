#a)	Obtener un listado completo de  los datos de los empleados y los nombres de los departamentos para los que trabajan.
#(crear la consulta y una vista con la misma)

select e.DNI , e.NOMBRE_E , e.Apellidos, d.NOMBRE_D  from empleados as e 
inner join departamentos as d on d.codigo = e.codigo;

create view puntoA as (select e.DNI , e.Apellidos,e.NOMBRE_E, d.NOMBRE_D  from empleados as e 
inner join departamentos as d on d.codigo = e.codigo)