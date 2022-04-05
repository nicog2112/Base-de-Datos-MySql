#8.	(Lista el nombre de todos los fabricantes en una columna,
#y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.)

Select nombre,UPPER(substr(nombre, 1,2)) MAYUSCULA  from fabricante;
