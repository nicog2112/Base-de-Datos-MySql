#b)	Obtener los nombres de las piezas y quienes son sus proveedores.(crear una vista con la misma)

SELECT p.NOMBRE , s.Id_Proveedor from piezas as p
inner join suministra as s on p.codigo = s.codigo;

create view puntoB AS (SELECT p.NOMBRE , s.Id_Proveedor from piezas as p
inner join suministra as s on p.codigo = s.codigo);
