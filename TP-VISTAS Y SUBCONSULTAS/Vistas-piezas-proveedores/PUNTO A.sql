#a)	Obtener los nombres de todas las piezas.(crear una vista con la misma)

select Nombre from piezas;

create view puntoA AS (select Nombre from piezas);