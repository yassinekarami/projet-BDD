DROP TABLE Pokemons CASCADE CONSTRAINT;
DROP SEQUENCE seqIdMob;

-- Creation de la table
CREATE TABLE Pokemons (
	nomPokemon VARCHAR2(50) NOT NULL,
	taille CHAR NOT NULL,
	generation NUMBER,
	type1 VARCHAR2(20) NOT NULL,
	type2 VARCHAR2(20),
	locomotion VARCHAR2(20) NOT NULL,
	environement VARCHAR2(20) NOT NULL,
	PRIMARY KEY (nomPokemon)
);

CREATE INDEX ind_type1 ON Pokemons(type1);
CREATE INDEX ind_type2 ON Pokemons(type2);
