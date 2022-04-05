#d)	Obtener los datos de los departamentos cuyo presupuesto es superior al presupuesto medio de todos los departamentos. (utilizar subconsulta)
SELECT AVG(PRESUPUESTO) FROM DEPARTAMENTOS ;

select *  from departamentos as d 
where d.PRESUPUESTO in (SELECT AVG(d.PRESUPUESTO) FROM DEPARTAMENTOS 
WHERE PRESUPUESTO > d.PRESUPUESTO);

create view puntoD as (select *  from departamentos as d 
where d.PRESUPUESTO in (SELECT AVG(d.PRESUPUESTO) FROM DEPARTAMENTOS 
WHERE PRESUPUESTO > d.PRESUPUESTO))