CREATE DATABASE VISTAS_EMPRESA;
USE VISTAS_EMPRESA;

-- 
-- TABLE: Departamentos 
--

CREATE TABLE Departamentos(
    CODIGO         INT                      NOT NULL,
    NOMBRE_D         NATIONAL VARCHAR(100),
    PRESUPUESTO    INT,
    PRIMARY KEY (CODIGO)
)ENGINE=MYISAM
;



-- 
-- TABLE: Empleados 
--

CREATE TABLE Empleados(
    DNI          VARCHAR(8)               NOT NULL,
    NOMBRE_E      NATIONAL VARCHAR(100),
    APELLIDOS    NATIONAL VARCHAR(100),
    CODIGO       INT,
    PRIMARY KEY (DNI)
)ENGINE=MYISAM
;



-- 
-- TABLE: Empleados 
--

ALTER TABLE Empleados ADD CONSTRAINT RefDepartamentos1 
    FOREIGN KEY (CODIGO)
    REFERENCES Departamentos(CODIGO)
;

INSERT INTO `vistas_empresa`.`empleados` (`DNI`, `NOMBRE_E`, `APELLIDOS`, `CODIGO`) VALUES ('41321452', 'Nicolas', 'Fernandez', '1');
INSERT INTO `vistas_empresa`.`empleados` (`DNI`, `NOMBRE_E`, `APELLIDOS`, `CODIGO`) VALUES ('21321542', 'Fernando', 'Ozuna', '2');
INSERT INTO `vistas_empresa`.`empleados` (`DNI`, `NOMBRE_E`, `APELLIDOS`, `CODIGO`) VALUES ('33124548', 'Isabela', 'Gomez', '3');

INSERT INTO `vistas_empresa`.`departamentos` (`CODIGO`, `NOMBRE_D`, `PRESUPUESTO`) VALUES ('1', 'Administracion', '240000');
INSERT INTO `vistas_empresa`.`departamentos` (`CODIGO`, `NOMBRE_D`, `PRESUPUESTO`) VALUES ('2', 'Contaduria ', '300000');
INSERT INTO `vistas_empresa`.`departamentos` (`CODIGO`, `NOMBRE_D`, `PRESUPUESTO`) VALUES ('3', 'Sistemas', '400000');

