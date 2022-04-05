#b)	Obtener un listado completo de  los datos de los empleados y los nombres de los departamentos para los que 
#trabajan en donde el presupuesto no supere $ 50000. (Realizar con y sin subconsulta)
#SIN SUBCONSULTA
select e.DNI , e.NOMBRE_E , e.Apellidos, d.NOMBRE_D  from empleados as e 
inner join departamentos as d on d.codigo = e.codigo
where d.PRESUPUESTO < 50000;

#CON SUBCONSULTA
select e.DNI , e.NOMBRE_E , e.Apellidos, d.NOMBRE_D  from empleados as e 
inner join departamentos as d on d.codigo = e.codigo
where d.PRESUPUESTO IN (SELECT PRESUPUESTO FROM DEPARTAMENTOS WHERE PRESUPUESTO < 50000);

create view puntoB as (select e.DNI , e.NOMBRE_E , e.Apellidos, d.NOMBRE_D  from empleados as e 
inner join departamentos as d on d.codigo = e.codigo where d.PRESUPUESTO < 50000)