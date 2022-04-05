create database finaldbfila1;
use finaldbfila1;

-- 
-- TABLE: PIEZAS 
--

CREATE TABLE PIEZAS(
    codigo    INT                      NOT NULL,
    Nombre    NATIONAL VARCHAR(100),
    PRIMARY KEY (codigo)
)ENGINE=INNODB
;



-- 
-- TABLE: PROVEEDORES 
--

CREATE TABLE PROVEEDORES(
    id        CHAR(4)                  NOT NULL,
    Nombre    NATIONAL VARCHAR(100),
    PRIMARY KEY (id)
)ENGINE=INNODB
;



-- 
-- TABLE: SUMINISTRA 
--

CREATE TABLE SUMINISTRA(
    id        CHAR(4)    NOT NULL,
    codigo    INT        NOT NULL,
    precio    INT,
    PRIMARY KEY (id, codigo)
)ENGINE=INNODB
;

INSERT INTO `finaldbfila1`.`piezas` (`codigo`, `Nombre`) VALUES ('1', 'TORNILLO');
INSERT INTO `finaldbfila1`.`piezas` (`codigo`, `Nombre`) VALUES ('2', 'ARANDELA');
INSERT INTO `finaldbfila1`.`piezas` (`codigo`, `Nombre`) VALUES ('3', 'CLAVO');

INSERT INTO `finaldbfila1`.`proveedores` (`id`, `Nombre`) VALUES ('1', 'proveedor1');
INSERT INTO `finaldbfila1`.`proveedores` (`id`, `Nombre`) VALUES ('2', 'proveedor2');
INSERT INTO `finaldbfila1`.`proveedores` (`id`, `Nombre`) VALUES ('3', 'proveedor3');


INSERT INTO `finaldbfila1`.`suministra` (`id`, `codigo`, `precio`) VALUES ('1', '1', '300');
INSERT INTO `finaldbfila1`.`suministra` (`id`, `codigo`, `precio`) VALUES ('2', '2', '400');
INSERT INTO `finaldbfila1`.`suministra` (`id`, `codigo`, `precio`) VALUES ('1', '3', '500');
INSERT INTO `finaldbfila1`.`suministra` (`id`, `codigo`, `precio`) VALUES ('3', '1', '300');




