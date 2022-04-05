#a.	Obtener los nombres de los proveedores que suministran la pieza 1.
Select proveedores.Nombre from proveedores 
join suministra 
ON proveedores.id = suministra.id
JOIN piezas
ON suministra.codigo = piezas.codigo
where piezas.codigo = 1;

#b.	Resuelva el ejercicio anterior, utilizando Subconsultas. 
Select proveedores.Nombre from proveedores 
join suministra 
ON proveedores.id = suministra.id
where suministra.codigo  in(select codigo
							from piezas 
                            where codigo = 1 );
                            
#c c.	Obtener los nombres de los proveedores que suministran las piezas mas caras, 
#indicando el nombre de la pieza y el precio al que la suministran. 
Select proveedores.Nombre,piezas.nombre,max(suministra.precio) as precio from proveedores 
join suministra 
ON proveedores.id = suministra.id
JOIN piezas
ON suministra.codigo = piezas.codigo
group by proveedores.nombre
order by precio DESC;

#d Obtener el precio promedio al que se suministran las piezas, indicando código de pieza y precio promedio.
Select piezas.codigo,avg(suministra.precio) as precio_promedio from proveedores 
join suministra 
ON proveedores.id = suministra.id
JOIN piezas
ON suministra.codigo = piezas.codigo
group by piezas.codigo;

#e Obtener el número de piezas suministra cada proveedor, indicando nombre del Proveedor y la cantidad total de piezas que suministra.
Select proveedores.nombre,count(suministra.id) as cantidad from proveedores 
join suministra 
ON proveedores.id = suministra.id
JOIN piezas
ON suministra.codigo = piezas.codigo
group by proveedores.nombre;


