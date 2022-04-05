#2. Obtener un listado de todos los empleados (nombre y apellido) que ganan más de 2000€ al mes y que entraron en la compañía 
#después del 1 de Enero de 1975. También se quiere la información correspondiente a su código de trabajo y 
#al número de personal de sus directores. 
Select nombre , apellido
from empleados as e
inner join departamentos as d
on e.dept = d.numdep
where e.salario > 2000 and e.feching > "1975.01.01" 
