#b)	Trigger que controle la nota  antes de ser ingresada en la tabla EVALUACIONES, 
#si se intenta ingresar un valor menor a 1 que inserte 1 y si intenta ingresar un valor  mayor a 10,
 #que se registre 10.
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

DELIMITER ;