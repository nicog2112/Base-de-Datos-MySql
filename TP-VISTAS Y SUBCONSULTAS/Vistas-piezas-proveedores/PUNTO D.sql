#d)	Obtener el nombre del prooveedor que suministra la pieza mas cara.

SELECT p.NOMBRE FROM PROVEEDORES as p, SUMINISTRA as s WHERE p.Id_Proveedor = s.Id_Proveedor AND
PRECIO = (SELECT MAX(PRECIO) FROM SUMINISTRA);

