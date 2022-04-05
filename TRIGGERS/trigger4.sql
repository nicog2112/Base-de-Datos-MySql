DROP TRIGGER alum_d
DELIMITER //

Create trigger alum_d 
after insert on cursos
for each row
begin
	Update centros 
		set
			NUM_ALUMNOS = (select count(NUM_ALUMNOS) from cursos where COD_CENTRO=NEW.COD_CENTRO)
			where COD_CENTRO=NEW.COD_CENTRO;
            update centros set
            NUM_CURSOS = (select count(*) from cursos where COD_CENTRO=NEW.COD_CENTRO)
			where COD_CENTRO=NEW.COD_CENTRO;
		
End //

DELIMITER ;