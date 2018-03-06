DROP TABLE Faiblesses CASCADE CONSTRAINT;
DROP SEQUENCE seqIdMob;

-- Creation de la table
CREATE TABLE Faiblesses (
	idFaiblesse NUMBER,
	type VARCHAR2(50) NOT NULL,
	faiblesse VARCHAR2(50) NOT NULL,
	PRIMARY KEY (idFaiblesse)
);

CREATE SEQUENCE seqIdFaib
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_typeF ON Faiblesses(type);
CREATE INDEX ind_faibF ON Faiblesses(faiblesse);
