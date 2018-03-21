---------TABLE OK

-- Script créant la table Resistances 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Resistances CASCADE CONSTRAINT;
DROP SEQUENCE seqIdResi;
-- Creation de la table
CREATE TABLE Resistances (
	idResistance NUMBER,
	type VARCHAR2(20) NOT NULL,
	resistance VARCHAR2(20) NOT NULL,
	CONSTRAINT pk_resistance PRIMARY KEY (idResistance)
);

CREATE SEQUENCE seqIdResi
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_typeR ON Resistances(type);
