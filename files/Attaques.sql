DROP TABLE Attaques CASCADE CONSTRAINT;
DROP SEQUENCE seqIdMob;

-- Creation de la table
CREATE TABLE Attaques (
	nomAttaque VARCHAR2(50) NOT NULL,
	typeAttaque VARCHAR2(20) NOT NULL,
	nbDegats NUMBER,
	PRIMARY KEY (nomAttaque)
);

CREATE INDEX ind_type ON Attaques(typeAttaque);

