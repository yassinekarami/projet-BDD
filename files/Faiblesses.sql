-- Script créant la table Faiblesses 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Faiblesses CASCADE CONSTRAINT;
ROP SEQUENCE seqIdFaib;
-- Creation de la table
CREATE TABLE Faiblesses (
	idFaiblesse NUMBER,
	type VARCHAR2(20) NOT NULL,
	faiblesse VARCHAR2(20) NOT NULL,
	PRIMARY KEY (idFaiblesse)
);

CREATE SEQUENCE seqIdFaib
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_typeF ON Faiblesses(type);
