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
