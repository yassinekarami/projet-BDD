--REMPLISSAGE DE LA TABLE POKEMONS
INSERT INTO Pokemons VALUES ('Bulbizarre','S',1,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO Pokemons VALUES ('Venusaur','M',2,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO Pokemons VALUES ('Ivysaur','L',3,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO Pokemons VALUES ('Squirtle','S',1,'Eau','NULL','Aquatique','Cotes');
INSERT INTO Pokemons VALUES ('Wartortle','M',2,'Eau','NULL','Aquatique','Cotes');
INSERT INTO Pokemons VALUES ('Tortank','L',3,'Eau','NULL','Aquatique','Oceans');
INSERT INTO Pokemons VALUES ('Salamèche','S',1,'Feu','NULL','Terrestre','Plaines');
INSERT INTO Pokemons VALUES ('Charmeleon','M',2,'Feu','NULL','Terrestre','Plaines');
INSERT INTO Pokemons VALUES ('Dracofeu','L',3,'Feu','NULL','Aerien','Plaines');
INSERT INTO Pokemons VALUES ('Pikachu','S',1,'Electrique','NULL','Terrestre','Forets');
INSERT INTO Pokemons VALUES ('Raichu','M',2,'Electrique','NULL','Terrestre','Forets');
INSERT INTO Pokemons VALUES ('Aspicot','S',1,'Insecte','Poison','Terrestre','Forets');
INSERT INTO Pokemons VALUES ('Kakuna','S',2,'Insecte','Poison','Terrestre','Forets');
INSERT INTO Pokemons VALUES ('Beedrill','M',3,'Insecte','Poison','Aerien','Forets');
INSERT INTO Pokemons VALUES ('Chenipan','S',1,'Insecte','NULL','Terrestre','Forets');
INSERT INTO Pokemons VALUES ('Metapod','S',2,'Insecte','NULL','Terrestre','Forets');
INSERT INTO Pokemons VALUES ('Butterfree','M',3,'Insecte','Vol','Aerien','Forets');
INSERT INTO Pokemons VALUES ('Oddish','S',1,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO Pokemons VALUES ('Gloom','M',2,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO Pokemons VALUES ('Rafflesia','M',3,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO Pokemons VALUES ('Pidgey','S',1,'Vol','Normal','Aerien','Villes');
INSERT INTO Pokemons VALUES ('Pidgeotto','M',2,'Vol','Normal','Aerien','Plaines');
INSERT INTO Pokemons VALUES ('Pidgeot','L',3,'Vol','Normal','Aerien','Plaines');
INSERT INTO Pokemons VALUES ('Ronflex','L',1,'Normal','NULL','Terrestre','Plaines');
INSERT INTO Pokemons VALUES ('Lokhlass','L',1,'Eau','NULL','Aquatique','Oceans');
INSERT INTO Pokemons VALUES ('Krabby','S',1,'Eau','NULL','Aquatique','Cotes');
INSERT INTO Pokemons VALUES ('Kingler','M',2,'Eau','NULL','Aquatique','Cotes');
INSERT INTO Pokemons VALUES ('Abra','S',1,'Psychique','NULL','Teleportation','Plaines');
INSERT INTO Pokemons VALUES ('Kadabra','M',2,'Psychique','NULL','Teleportation','Plaines');
INSERT INTO Pokemons VALUES ('Alakazam','M',3,'Psychique','NULL','Teleportation','Plaines');
INSERT INTO Pokemons VALUES ('Jynx','M',1,'Glace','Psychique','Terrestre','Arctique');
INSERT INTO Pokemons VALUES ('Geodude','S',1,'Roche','Terre','Terrestre','Grottes');
INSERT INTO Pokemons VALUES ('Graveller','L',2,'Roche','Terre','Terrestre','Montagnes');
INSERT INTO Pokemons VALUES ('Golem','L',3,'Roche','Terre','Terrestre','Montagnes');
INSERT INTO Pokemons VALUES ('Diglet','S',1,'Terre',NULL,'Sous-terrain','Grottes');
INSERT INTO Pokemons VALUES ('Dugtrio','M',2,'Terre',NULL,'Sous-terrain','Grottes');
INSERT INTO Pokemons VALUES ('Machop','M',1,'Combat',NULL,'Terrestre','Montagnes');
INSERT INTO Pokemons VALUES ('Machoke','L',2,'Combat',NULL,'Terrestre','Montagnes');
INSERT INTO Pokemons VALUES ('Machamp','L',3,'Combat',NULL,'Terrestre','Montagnes');
INSERT INTO Pokemons VALUES ('Ghastly','S',1,'Fantome','Poison','Aerien','Villes');
INSERT INTO Pokemons VALUES ('Haunter','M',2,'Fantome','Poison','Aerien','Villes');
INSERT INTO Pokemons VALUES ('Gengar','L',3,'Fantome','Poison','Aerien','Villes');
INSERT INTO Pokemons VALUES ('Dratiny','S',1,'Dragon',NULL,'Aquatique','Oceans');
INSERT INTO Pokemons VALUES ('Dragonair','L',2,'Dragon',NULL,'Aquatique','Oceans');
INSERT INTO Pokemons VALUES ('Dragonite','L',3,'Dragon','Vol','Aerien','Oceans');
INSERT INTO Pokemons VALUES ('Magikarpe','S',1,'Eau',NULL,'Aquatique','Rivières');
INSERT INTO Pokemons VALUES ('Gyarados','L',2,'Eau','Vol','Aquatique','Oceans');


--REMPLISSAGE DE LA TABLE DRESSEURS
INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Red','Kanto','Pikachu','Tonnerre');
INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Noel','Kanto','Magikarpe','Splash');
INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Yassine','Kanto','Bulbizarre','Tranch-Feuilles');
INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Ounbaydat','Kanto','Pikachu','Frappe-Eclair');

INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Red','Hoenn','Gengar','Cauchemar');
INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Blue','Hoenn','Machop','Frappe');

INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Noel','Johto','Gyarados','Tonnerre');
INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Green','Johto','Dracofeu','Lance-Flamme');
INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Gold','Johto','Dragonite','Hyper-Beam');
INSERT INTO Dresseurs VALUES (seqIdDres.nextval,'Silver','Johto','Ronflex','Frappe');

--REMPLISSAGE DE LA TABLE SERVEURS
INSERT INTO Serveurs VALUES ('Kanto',4,'Noel');
INSERT INTO Serveurs VALUES ('Hoenn',4,'Red');
INSERT INTO Serveurs VALUES ('Johto',4,'Noel');

--REMPLISSAGE DE LA TABLE ATTAQUES
INSERT INTO Attaques VALUES ('Tonnerre','Electrique',100);
INSERT INTO Attaques VALUES ('Splash','Normal',0);
INSERT INTO Attaques VALUES ('Tranch-Feuilles','Feuille',20);
INSERT INTO Attaques VALUES ('Frappe-Eclair','Electrique',50);
INSERT INTO Attaques VALUES ('Cauchemar','Fantome',40);
INSERT INTO Attaques VALUES ('Frappe','Combat',100);
INSERT INTO Attaques VALUES ('Lance-Flamme','Feu',70);
INSERT INTO Attaques VALUES ('Hyper-Beam','Normal',150);

--REMPLISSAGE DE LA TABLE FAIBLESSES
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Insecte','Feu');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Insecte','Vol');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Insecte','Roche');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Electrique','Terre');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Feu','Terre');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Feu','Roche');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Feu','Eau');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Feuille','Insecte');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Feuille','Fire');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Feuille','Vol');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Feuille','Glace');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Feuille','Poison');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Normal','Combat');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Roche','Combat');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Roche','Feuille');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Roche','Sol');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Roche','Eau');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Vol','Electrique');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Vol','Glace');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Vol','Roche');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Sol','Feuille');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Sol','Glace');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Sol','Eau');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Poison','Sol');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Poison','Psychique');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Dragon','Dragon');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Dragon','Glace');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Combat','Vol');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Combat','Psychique');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Fantome','Fantome');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Glace','Combat');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Glace','Feu');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Glace','Roche');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Glace','Combat');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Psychique','Insecte');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Psychique','Fantome');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Eau','Electrique');
INSERT INTO Faiblesses VALUES (seqIdFaib.nextval,'Eau','Feuille');


--REMPLISSAGE DE LA TABLE RESISTANCE
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Insecte','Combat');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Insecte','Feuille');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Insecte','Sol');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Electrique','Electrique');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Electrique','Vol');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Feu','Feu');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Feu','Insecte');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Feu','Feuille');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Feu','Glace');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Feuille','Feuille');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Feuille','Electrique');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Feuille','Sol');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Feuille','Eau');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Normal','Fantome');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Roche','Feu');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Roche','Normal');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Roche','Poison');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Roche','Vol');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Vol','Insecte');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Vol','Combat');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Vol','Feuille');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Vol','Sol');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Sol','Poison');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Sol','Roche');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Sol','Electricite');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Poison','Insecte');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Poison','Combat');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Poison','Feuille');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Poison','Poison');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Dragon','Electricite');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Dragon','Feu');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Dragon','Feuille');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Dragon','Eau');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Combat','Insecte');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Combat','Roche');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Fantome','Insecte');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Fantome','Poison');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Fantome','Normal');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Fantome','Combat');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Glace','Glace');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Psychique','Combat');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Psychique','Psychique');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Eau','Feu');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Eau','Glace');
INSERT INTO Resistances VALUES (seqIdResi.nextval,'Eau','Eau');












