#3. Obtener una lista con el apellido, número de departamento y salario mensual de los empleados de los departamentos ‘A00’, ‘B01’, ‘C01’ y ‘D01’. 
#La salida se quiere en orden descendente de salario dentro de cada departamento. 
Select apellido, numdep , salario
from empleados as e
inner join departamentos as d
on e.dept = d.numdep
where e.dept  IN ("A00" ,"B01" , "C01" ,"D01") 
order by e.dept , e.salario desc