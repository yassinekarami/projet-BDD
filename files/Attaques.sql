-- Script créant la table Attaques 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Attaques CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Attaques (
	nomAttaque VARCHAR2(50) NOT NULL,
	typeAttaque VARCHAR2(50) NOT NULL,
	nbDegats NUMBER,
	PRIMARY KEY (nomAttaque)

	CONSTRAINT attackDmg CHECK (nbDegats > -1)
);

CREATE INDEX ind_typeAtt ON Attaques(typeAttaque);
