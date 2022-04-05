create database finaljulio2;
use finaljulio2;
-- 
-- TABLE: ASIGNADO_A 
--

CREATE TABLE ASIGNADO_A(
    id     CHAR(4)       NOT NULL,
    DNI    VARCHAR(8)    NOT NULL,
    PRIMARY KEY (id, DNI)
)ENGINE=INNODB
;



-- 
-- TABLE: CIENTIFICOS 
--

CREATE TABLE CIENTIFICOS(
    DNI         VARCHAR(8)    NOT NULL,
    NomApels    CHAR(30),
    PRIMARY KEY (DNI)
)ENGINE=INNODB
;



-- 
-- TABLE: PROYECTO 
--

CREATE TABLE PROYECTO(
    id        CHAR(4)                  NOT NULL,
    nombre    NATIONAL VARCHAR(255),
    horas     INT,
    PRIMARY KEY (id)
)ENGINE=INNODB
;



-- 
-- TABLE: ASIGNADO_A 
--

ALTER TABLE ASIGNADO_A ADD CONSTRAINT RefPROYECTO1 
    FOREIGN KEY (id)
    REFERENCES PROYECTO(id)
;

ALTER TABLE ASIGNADO_A ADD CONSTRAINT RefCIENTIFICOS2 
    FOREIGN KEY (DNI)
    REFERENCES CIENTIFICOS(DNI)
;


INSERT INTO `finaljulio2`.`proyecto` (`id`, `nombre`, `horas`) VALUES ('1', 'vacuna', '30');
INSERT INTO `finaljulio2`.`proyecto` (`id`, `nombre`, `horas`) VALUES ('2', 'pastilla', '50');
INSERT INTO `finaljulio2`.`proyecto` (`id`, `nombre`, `horas`) VALUES ('3', 'jarabe', '15');

INSERT INTO `finaljulio2`.`cientificos` (`DNI`, `NomApels`) VALUES ('41382584', 'Nicolas Gauna');
INSERT INTO `finaljulio2`.`cientificos` (`DNI`, `NomApels`) VALUES ('08232041', 'Ricardo Lorenzo');
INSERT INTO `finaljulio2`.`cientificos` (`DNI`, `NomApels`) VALUES ('19023912', 'Lidia Martinez');

INSERT INTO `finaljulio2`.`asignado_a` (`id`, `DNI`) VALUES ('1', '41382584');
INSERT INTO `finaljulio2`.`asignado_a` (`id`, `DNI`) VALUES ('2', '19023912');
INSERT INTO `finaljulio2`.`asignado_a` (`id`, `DNI`) VALUES ('3', '08232041');
INSERT INTO `finaljulio2`.`asignado_a` (`id`, `DNI`) VALUES ('2', '41382584');


