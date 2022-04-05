#1. Obtener una lista de todas las empleadas de los departamentos que empiecen por D y por E.
# La lista anterior debe contener información sobre el número de personal, nombre, apellido y número de teléfono. 
Select nuempl , nombre , apellido, tlfn
from empleados as e
inner join departamentos as d
on e.dept = d.numdep
WHERE
    e.sexo = 'M' OR d.nomdep LIKE 'D%'
        AND d.nomdep LIKE 'E%';
