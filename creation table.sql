--------TABLE OK

-- Script créant la table Attaques 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Attaques CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Attaques (nomAttaque VARCHAR2(50) NOT NULL,
						typeAttaque VARCHAR2(50) NOT NULL,
						nbDegats NUMBER,
						CONSTRAINT pk_attaques PRIMARY KEY (nomAttaque),
						CONSTRAINT attackDmg CHECK (nbDegats > -1)
);


CREATE INDEX ind_typeAtt ON Attaques(typeAttaque);


---------------TABLE OK

-- Script créant la table Faiblesses 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications

DROP TABLE Faiblesses CASCADE CONSTRAINT;
DROP SEQUENCE seqIdFaib;
-- Creation de la table
CREATE TABLE Faiblesses (
	idFaiblesse NUMBER,
	type VARCHAR2(20) NOT NULL,
	faiblesse VARCHAR2(20) NOT NULL,
	CONSTRAINT pk_faiblesses PRIMARY KEY (idFaiblesse)
);

CREATE SEQUENCE seqIdFaib
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_typeF ON Faiblesses(type);


----------INDEX PAS CREE

-- Script créant la table Pokemons
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Pokemons CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Pokemons (
	nomPokemon VARCHAR2(50),
	taille CHAR NOT NULL,
	generation VARCHAR2(20) NOT NULL,
	type1 VARCHAR2(20) NOT NULL,
	type2 VARCHAR2(20),
	locomotion VARCHAR2(20),
	environement VARCHAR2(20),
	CONSTRAINT pk_pokemon PRIMARY KEY (nomPokemon));








---------TABLE OK

-- Script créant la table Resistances 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Resistances CASCADE CONSTRAINT;
DROP SEQUENCE seqIdResi;
-- Creation de la table
CREATE TABLE Resistances (
	idResistance NUMBER,
	type VARCHAR2(20) NOT NULL,
	resistance VARCHAR2(20) NOT NULL,
	CONSTRAINT pk_resistance PRIMARY KEY (idResistance)
);

CREATE SEQUENCE seqIdResi
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_typeR ON Resistances(type);





----------TABLE OK

-- Script créant la table Serveurs 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Serveurs CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Serveurs (
	nomServeur VARCHAR2(50) NOT NULL,
	nbJoueur NUMBER,
	champion VARCHAR2(20) NOT NULL,
	CONSTRAINT pk_serveur PRIMARY KEY (nomServeur)
);

CREATE INDEX ind_nomChamp ON Serveurs(champion);




--------------TABLE OK


-- Script créant la table Dresseurs 
-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Dresseurs CASCADE CONSTRAINT;
DROP SEQUENCE seqIdDres;

-- Creation de la table
CREATE TABLE Dresseurs (idDresseur NUMBER,
						nomDresseur VARCHAR2(50) NOT NULL,
						nomServeur VARCHAR2(20),
						nomPokemon VARCHAR2(20),
						nomAttaque VARCHAR2(20),
						CONSTRAINT pk_dresseur PRIMARY KEY (idDresseur),
						CONSTRAINT fk__nomServeur FOREIGN KEY (nomServeur) REFERENCES Serveurs(nomServeur),
						CONSTRAINT fk__nomPokemon FOREIGN KEY (nomPokemon) REFERENCES Pokemons(nomPokemon),
						CONSTRAINT fk__nomAttaque FOREIGN KEY (nomAttaque) REFERENCES Attaques(nomAttaque));

CREATE SEQUENCE seqIdDres
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_nomD ON Dresseurs(nomDresseur);
CREATE INDEX ind_servD ON Dresseurs(nomServeur);


