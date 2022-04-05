Create database piezas_proveedores;
use piezas_proveedores;
-- 
-- TABLE: Piezas 
--

CREATE TABLE Piezas(
    Codigo    INT                      NOT NULL,
    Nombre    NATIONAL VARCHAR(100),
    PRIMARY KEY (Codigo)
)ENGINE=INNODB
;



-- 
-- TABLE: Proveedores 
--

CREATE TABLE Proveedores(
    Id_Proveedor    INT                      NOT NULL,
    Nombre          NATIONAL VARCHAR(100),
    PRIMARY KEY (Id_Proveedor)
)ENGINE=INNODB
;



-- 
-- TABLE: Suministra 
--

CREATE TABLE Suministra(
    Id_Proveedor    INT    NOT NULL,
    Codigo          INT    NOT NULL,
    Precio          INT,
    PRIMARY KEY (Id_Proveedor, Codigo)
)ENGINE=INNODB
;



-- 
-- TABLE: Suministra 
--

ALTER TABLE Suministra ADD CONSTRAINT RefProveedores1 
    FOREIGN KEY (Id_Proveedor)
    REFERENCES Proveedores(Id_Proveedor)
;

ALTER TABLE Suministra ADD CONSTRAINT RefPiezas2 
    FOREIGN KEY (Codigo)
    REFERENCES Piezas(Codigo)
;

