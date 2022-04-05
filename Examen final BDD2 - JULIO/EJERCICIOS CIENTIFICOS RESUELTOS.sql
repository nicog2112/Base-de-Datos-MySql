#a.	Obtener los nombres de los científicas que trabajan en el Proyecto “Vacuna”.
Select cientificos.* from cientificos 
join asignado_a 
ON cientificos.DNI = asignado_a.DNI
JOIN proyecto
ON asignado_a.id = proyecto.id
where proyecto.nombre like '%vacuna%';

#b.	Resuelva el ejercicio anterior, utilizando Subconsultas. 
select cientificos.* from cientificos 
	inner join asignado_a 
		ON cientificos.DNI = asignado_a.DNI
where asignado_a.id  in(select id
							from proyecto 
                            where id = 1 );
    
#c.	Obtener los nombres de los Científicos que se dedican al proyecto con mayor cantidad de Horas asignadas.  
Select cientificos.*,max(proyecto.horas) as horas from cientificos 
join asignado_a 
ON cientificos.DNI = asignado_a.DNI
JOIN proyecto
ON asignado_a.id = proyecto.id;

#d.	Obtener el numero de horas de dedicación de cada científico, indicando,
# DNI, Nombre y Apellido del Cientifico y el total de horas dedicadas.
Select cientificos.* , SUM(proyecto.horas) AS Horas_dedicadas from cientificos 
join asignado_a 
ON cientificos.DNI = asignado_a.DNI
JOIN proyecto
ON asignado_a.id = proyecto.id
group by cientificos.DNI;

#e.	Obtener la cantidad de proyectos asignados a cada Cientifico, indicando DNI, Nombre del Cientifico y la cantidad total de Proyectos Asignados.
Select cientificos.* , count(proyecto.id) AS Cantidad_proyectos from cientificos 
join asignado_a 
ON cientificos.DNI = asignado_a.DNI
JOIN proyecto
ON asignado_a.id = proyecto.id
group by cientificos.DNI;

#2.	Considerando el esquema anterior escribir un procedimiento que permita actualizar la cantidad de horas de un proyecto determinado  
delimiter //
create procedure actualizar_horas( in
    id_proyecto        CHAR(4) ,
    horas_proyecto     INT)
begin
	 UPDATE finaljulio2.proyecto SET horas = horas_proyecto WHERE (id = id_proyecto);
end //
delimiter ;
call actualizar_horas(1,30);

#2.	Considerando el esquema anterior escribir un procedimiento que permita eliminar un proyecto determinado  
delimiter //
create procedure ELIMINAR_PROYECTOS( in
    id_proyecto        CHAR(4) ,
    DNI_ASIGNADO  CHAR(8))
begin
	DELETE FROM finaljulio2.proyecto WHERE (id = id_proyecto);
end //
delimiter ;
call ELIMINAR_PROYECTOS("2","41382584");

#3.	Que diferencia existe entre los Procedimientos y las Funciones? 
#Los procedimientos pueden devolver o no valores, mientras que las funciones devuelven si o si un valor

#4.	Encuentre y mencione el error en la siguiente Función. 
# El principal error que encuentro en la funcion es que la variable c no estaba declarada.
#La funcion recibe 3 variables como parametros a,b y c , luego realiza una suma entre a y b y el resultado lo divide por c.
DELIMITER $$
Create Function Funcion1 (a integer , b integer, c integer)
Returns Integer
Begin 
	Declare RESULTADO INTEGER;
	SET RESULTADO = (a+b)/c;
    return RESULTADO;
end
$$
delimiter ;

SELECT Funcion1(3,3,3);

#5.	Dada el siguiente esquema, indique a que Arquitectura corresponde
#c- Disco compartido 