#TRIGER1
DELIMITER //
CREATE TRIGGER upd_num_alumnos
after insert on alumnos
for each row 
begin 
	update cursos
		set
			NUM_ALUMNOS=(select COUNT(*) from alumnos where COD_CURSO = NEW.COD_CURSO)
		Where 
			COD_CURSO=NEW.Cod_Curso;
end //

DELIMITER ;