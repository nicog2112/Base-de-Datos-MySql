#a)	Procedure para insertar alumnos en la tabla alumnos.
DELIMITER $$
 
CREATE PROCEDURE  ProcedimientoInsertar
(
in NUM_ALUMNO int(50),
in COD_CURSO int(50),
in NOMBRE varchar(50),
in DIRECCION varchar(50),
in TLF varchar(50),
in NOTA_MEDIA float(50)
)
BEGIN
insert into alumnos(NUM_ALUMNO,COD_CURSO,NOMBRE,DIRECCION,TLF,NOTA_MEDIA)
values(NUM_ALUMNO,COD_CURSO,NOMBRE,DIRECCION,TLF,NOTA_MEDIA);
END