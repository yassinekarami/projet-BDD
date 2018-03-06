DROP TABLE Resistances CASCADE CONSTRAINT;
DROP SEQUENCE seqIdMob;

-- Creation de la table
CREATE TABLE Resistances (
	idResistance NUMBER,
	type VARCHAR2(50) NOT NULL,
	resistance VARCHAR2(50) NOT NULL,
	PRIMARY KEY (idResistance)
);

CREATE SEQUENCE seqIdRes
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_typeR ON Resistances(type);
CREATE INDEX ind_resR ON Resistances(resistance);
