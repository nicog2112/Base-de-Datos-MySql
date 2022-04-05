USE ejemplotriggers;
#Ejemplo Trigger 1
CREATE TRIGGER modificacion
  AFTER INSERT ON persona
FOR EACH ROW
  INSERT INTO nuevosDatos
  VALUES (NEW.codigo, CURRENT_DATE, 'i');
  
 #Ejemplo Trigger 2
 DELIMITER |
 
CREATE TRIGGER validacionPersona BEFORE INSERT ON persona
FOR EACH ROW BEGIN
  SET NEW.codigo = UPPER(NEW.codigo);
  SET NEW.edad = IF(NEW.edad = 0, NULL, NEW.edad);
END;
|
DELIMITER ;

#Ejemplo trigger 3 COPIA DE SEGURIDAD
CREATE TRIGGER copiadeseguridad BEFORE DELETE ON persona
FOR EACH ROW 
INSERT INTO copia_persona
values (old.codigo, old.nombre, old.edad);