-- Script créant la table Serveurs 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Serveurs CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Serveurs (
	nomServeur VARCHAR2(50) NOT NULL,
	nbJoueur NUMBER,
	champion VARCHAR2(20) NOT NULL,
	PRIMARY KEY (nomServeur)
);

CREATE INDEX ind_nomChamp ON Serveurs(champion);
