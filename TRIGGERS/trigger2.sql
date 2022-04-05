#TRIGER2
DROP TRIGGER CONTROL_NOTA_2
DELIMITER //

CREATE TRIGGER CONTROL_NOTA
before insert on evaluaciones
for each row 
begin 
	if new.NOTA > 10 THEN 
		SET NEW.NOTA=10;
	ELSE
		if new.NOTA < 1 THEN 
			SET NEW.NOTA = 1;
		END IF;
	END IF;
END //

DELIMITER //
Create trigger CONTROL_NOTA_2 
after insert on evaluaciones
for each row
begin
	Update alumnos as a
		set 
			NOTA_MEDIA= (select avg(NOTA) from evaluaciones where num_alumno=new.num_alumno)
		where 
			num_alumno=new.num_alumno;
	
End //

DELIMITER ;