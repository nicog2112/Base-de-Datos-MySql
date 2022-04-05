use universidad;
#a. Devuelve un listado con los nombres y los créditos de todas las asignaturas ofertadas en
#el Grado Ingeniería Informática.
#a
select a.nombre, a.creditos 
from asignatura a 
	inner join grado g 
		on g.id = a.id
        where a.id_grado = 4; # 4 seria el id del grado de Ingenieria Informatica

#b
#Devuelve un listado de los profesores junto con el nombre del departamento al que están
#vinculados y las asignaturas que imparte. El listado debe devolver primer apellido, segundo
#apellido, nombre, nombre del departamento y nombre de la asignatura. El resultado estará
#ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.
select p.apellido1 as "1er apellido", p.apellido2 as "2do apellido", p.nombre as "nombre profesor", d.nombre as "departamento", a.nombre as "asignatura" 
from persona p
	inner join profesor pr on p.id = pr.id_profesor
		inner join departamento d on d.id = pr.id_departamento
			inner join asignatura a on a.id_profesor = pr.id_profesor
order by p.apellido1, p.apellido2, p.nombre desc;


#c
#Devuelve un listado con los profesores que no imparten ninguna asignatura. (Utilice Left o
#Right Join según corresponda)
select p.id_profesor,persona.nombre, persona.apellido1, persona.apellido2,count(a.id) as "cantidad"
from persona
join profesor as p
ON p.id_profesor = persona.id
	left join asignatura as a
		on a.id_profesor = p.id_profesor
GROUP BY p.id_profesor
having count(a.id) = 0;

#d
#d.	Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, 
#una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir
#los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.

select d.nombre, count(p.id_departamento) as cantidad
from departamento d
	inner join profesor p
ON d.id = p.id_departamento
group by d.nombre
order by cantidad desc;

#e
# Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura utilizando subconsulta.
### con subconsulta ############
select * from profesor pr 
	inner join persona p
		on pr.id_profesor = p.id
where pr.id_profesor not in(select id_profesor 
							from asignatura 
                            where id_profesor is not null);
###### sin subconsulta #################
SELECT profesor.id_profesor,profesor.id_departamento, persona.nombre, persona.apellido1, persona.apellido2, COUNT(asignatura.id) as asignatura
FROM profesor 
INNER JOIN persona
ON profesor.id_profesor = persona.id
 LEFT JOIN asignatura
ON profesor.id_profesor = asignatura.id_profesor
GROUP BY profesor.id_profesor
having count(asignatura.id) = 0
;


#2
#	Teniendo el esquema del punto anterior crear un procedimiento
 #que devuelva un listado de las asignaturas si se ingresa como parámetro el nombre del grado.
delimiter //
create procedure listado_asignaturas2(in nombreb varchar(100))
begin
	select a.* from asignatura a
		join grado g on g.id = a.id_grado
	where g.nombre = nombreb;
end //
delimiter ;
CALL listado_asignaturas2("Grado en Ingeniería Informática (Plan 2015)");

#3)  3.	Analizar el siguiente Trigger y mencionar cual es el error si lo tuviese y que realiza. 
DELIMITER//
CREATE TRIGGER CONTROL_S BEFORE INSERT ON PERSONA FOR EACH ROW
BEGIN
IF (NEW.SEXO) <> ‘H’ OR  (NEW.SEXO) <> ‘M’ THEN 
 NEW.SEXO =NULL;
END IF;
END//
DELIMITER;

#El error que pude encontrar es que se trata de un before update, no un before insert
#lo que deberia realizar es que al actualizar el valor sexo, este comprueba si es H o M, si no es asi, reemplaza el valor por null.

#4) 4.	Encuentre y mencione el error en la siguiente Función. 
DELIMITER $$
Create Function Funcion1 (a integer , b integer)
Returns Integer
Begin 
	Declare RESULTADO INTEGER;
	SET RESULTADO = a*b;
    return RESULTADO;
end
$$
delimiter ;

SELECT Funcion1(2,2);

################################# ERRORES #########################################
##Algunos errores que contiene la función son:
#Funcion1 no va con comillas
#RETURN es en realidad RETURNS
#Y Falta un return al final que retorne resultado 

##La funcion no esta delimitada, y dentro de la misma no esta retornando ningun valor. 

#################################### LO QUE DEBE REALIZAR ###################################
#La función quedaría asi y lo que hace es recibir un parámetro a y b y los multiplica para luego devolver el resultado