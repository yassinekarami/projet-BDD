-- Script créant la table Pokemons
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Pokemons CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Pokemons (
	nomPokemon VARCHAR2(50) NOT NULL,
	taille CHAR NOT NULL,
	generation VARCHAR2(20) NOT NULL,
	type1 VARCHAR2(20) NOT NULL,
	type2 VARCHAR2(20),
	locomotion VARCHAR2(20),
	environement VARCHAR2(20),
	PRIMARY KEY (nomPokemon)
);


CREATE INDEX ind_nomP ON Pokemons(nomPokemon);
