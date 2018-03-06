DROP TABLE Serveurs CASCADE CONSTRAINT;
DROP SEQUENCE seqIdMob;

-- Creation de la table
CREATE TABLE Serveurs (
	nomServeur VARCHAR2(50) NOT NULL,
	nbJoueur NUMBER,
	champion VARCHAR2(20) NOT NULL,
	PRIMARY KEY (nomServeur)
);
