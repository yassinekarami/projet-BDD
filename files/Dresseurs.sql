-- Script créant la table Dresseurs 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Dresseurs CASCADE CONSTRAINT;
DROP SEQUENCE seqIdDres;

-- Creation de la table
CREATE TABLE Dresseurs (
	idDresseur NUMBER,
	nomDresseur VARCHAR2(50) NOT NULL,
	nomServeur VARCHAR2(20) REFERENCES Serveurs(nomServeur) NOT NULL,
	nomPokemon VARCHAR2(20) REFERENCES Pokemons(nomPokemon) NOT NULL,
	nomAttaque VARCHAR2(20) REFERENCES Attaques(nomAttaque) NOT NULL,
	PRIMARY KEY (idDresseur)
);

CREATE SEQUENCE seqIdDres
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_nomD ON Dresseurs(nomDresseur);
