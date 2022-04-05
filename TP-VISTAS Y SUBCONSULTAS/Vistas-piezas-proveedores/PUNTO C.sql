#c)	Obtener los nombres de las piezas suministeadas por el  proveedor cuyo codigo es ‘HAL’ (realizar la consulta con y sin subconsulta)
#Sin subconsulta

SELECT p.NOMBRE from piezas as p
inner join suministra as s on p.codigo = s.codigo 
where s.Id_proveedor ='HAL' ;

#Con subconsulta
SELECT p.NOMBRE from piezas as p
where codigo in (select codigo from suministra as s 
where Id_Proveedor ='HAL') 
