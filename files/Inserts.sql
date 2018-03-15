--REMPLISSAGE DE LA TABLE POKEMONS
INSERT INTO L3_112.Pokemons VALUES ('Bulbizarre','S',1,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO L3_112.Pokemons VALUES ('Venusaur','M',2,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO L3_112.Pokemons VALUES ('Ivysaur','L',3,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO L3_112.Pokemons VALUES ('Squirtle','S',1,'Eau','NULL','Aquatique','Côtes');
INSERT INTO L3_112.Pokemons VALUES ('Wartortle','M',2,'Eau','NULL','Aquatique','Côtes');
INSERT INTO L3_112.Pokemons VALUES ('Tortank','L',3,'Eau','NULL','Aquatique','Océans');
INSERT INTO L3_112.Pokemons VALUES ('Salamèche','S',1,'Feu','NULL','Terrestre','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Charmeleon','M',2,'Feu','NULL','Terrestre','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Dracofeu','L',3,'Feu','NULL','Aerien','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Pikachu','S',1,'Electrique','NULL','Terrestre','Forêts');
INSERT INTO L3_112.Pokemons VALUES ('Raichu','M',2,'Electrique','NULL','Terrestre','Forêts');
INSERT INTO L3_112.Pokemons VALUES ('Aspicot','S',1,'Insecte','Poison','Terrestre','Forêts');
INSERT INTO L3_112.Pokemons VALUES ('Kakuna','S',2,'Insecte','Poison','Terrestre','Forêts');
INSERT INTO L3_112.Pokemons VALUES ('Beedrill','M',3,'Insecte','Poison','Aerien','Forêts');
INSERT INTO L3_112.Pokemons VALUES ('Chenipan','S',1,'Insecte','NULL','Terrestre','Forêts');
INSERT INTO L3_112.Pokemons VALUES ('Metapod','S',2,'Insecte','NULL','Terrestre','Forêts');
INSERT INTO L3_112.Pokemons VALUES ('Butterfree','M',3,'Insecte','Vol','Aerien','Forêts');
INSERT INTO L3_112.Pokemons VALUES ('Oddish','S',1,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO L3_112.Pokemons VALUES ('Gloom','M',2,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO L3_112.Pokemons VALUES ('Rafflesia','M',3,'Feuille','Poison','Terrestre','Jungles');
INSERT INTO L3_112.Pokemons VALUES ('Pidgey','S',1,'Vol','Normal','Aerien','Villes');
INSERT INTO L3_112.Pokemons VALUES ('Pidgeotto','M',2,'Vol','Normal','Aerien','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Pidgeot','L',3,'Vol','Normal','Aerien','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Ronflex','L',1,'Normal','NULL','Terrestre','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Lokhlass','L',1,'Eau','NULL','Aquatique','Océans');
INSERT INTO L3_112.Pokemons VALUES ('Krabby','S',1,'Eau','NULL','Aquatique','Côtes');
INSERT INTO L3_112.Pokemons VALUES ('Kingler','M',2,'Eau','NULL','Aquatique','Côtes');
INSERT INTO L3_112.Pokemons VALUES ('Abra','S',1,'Psychique','NULL','Teleportation','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Kadabra','M',2,'Psychique','NULL','Teleportation','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Alakazam','M',3,'Psychique','NULL','Teleportation','Plaines');
INSERT INTO L3_112.Pokemons VALUES ('Jynx','M',1,'Glace','Psychique','Terrestre','Arctique');
INSERT INTO L3_112.Pokemons VALUES ('Geodude','S',1,'Roche','Terre','Terrestre','Grottes');
INSERT INTO L3_112.Pokemons VALUES ('Graveller','L',2,'Roche','Terre','Terrestre','Montagnes');
INSERT INTO L3_112.Pokemons VALUES ('Golem','L',3,'Roche','Terre','Terrestre','Montagnes');
INSERT INTO L3_112.Pokemons VALUES ('Diglet','S',1,'Terre',NULL,'Sous-terrain','Grottes');
INSERT INTO L3_112.Pokemons VALUES ('Dugtrio','M',2,'Terre',NULL,'Sous-terrain','Grottes');
INSERT INTO L3_112.Pokemons VALUES ('Machop','M',1,'Combat',NULL,'Terrestre','Montagnes');
INSERT INTO L3_112.Pokemons VALUES ('Machoke','L',2,'Combat',NULL,'Terrestre','Montagnes');
INSERT INTO L3_112.Pokemons VALUES ('Machamp','L',3,'Combat',NULL,'Terrestre','Montagnes');
INSERT INTO L3_112.Pokemons VALUES ('Ghastly','S',1,'Fantôme','Poison','Aerien','Villes');
INSERT INTO L3_112.Pokemons VALUES ('Haunter','M',2,'Fantôme','Poison','Aerien','Villes');
INSERT INTO L3_112.Pokemons VALUES ('Gengar','L',3,'Fantôme','Poison','Aerien','Villes');
INSERT INTO L3_112.Pokemons VALUES ('Dratiny','S',1,'Dragon',NULL,'Aquatique','Océans');
INSERT INTO L3_112.Pokemons VALUES ('Dragonair','L',2,'Dragon',NULL,'Aquatique','Océans');
INSERT INTO L3_112.Pokemons VALUES ('Dragonite','L',3,'Dragon','Vol','Aerien','Océans');
INSERT INTO L3_112.Pokemons VALUES ('Magikarpe','S',1,'Eau',NULL,'Aquatique','Rivières');
INSERT INTO L3_112.Pokemons VALUES ('Gyarados','L',2,'Eau','Vol','Aquatique','Océans');


--REMPLISSAGE DE LA TABLE DRESSEURS
INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Red','Kanto','Pikachu','Tonnerre');
INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Noel','Kanto','Magikarpe','Splash');
INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Yassine','Kanto','Bulbizarre','Tranch-Feuilles');
INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Ounbaydat','Kanto','Pikachu','Frappe-Eclair');

INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Red','Hoenn','Gengar','Cauchemar');
INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Blue','Hoenn','Machop','Frappe');

INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Noel','Johto','Gyarados','Tonnerre');
INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Green','Johto','Dracofeu','Lance-Flamme');
INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Gold','Johto','Dragonite','Hyper-Beam');
INSERT INTO L3_112.Dresseurs VALUES (L3_112.seqIdDres.nextval,'Silver','Johto','Ronflex','Frappe');

--REMPLISSAGE DE LA TABLE SERVEURS
INSERT INTO L3_112.Serveurs VALUES ('Kanto',4,'Noel');
INSERT INTO L3_112.Serveurs VALUES ('Hoenn',2,'Red');
INSERT INTO L3_112.Serveurs VALUES ('Johto',4,'Noel');

--REMPLISSAGE DE LA TABLE ATTAQUES
INSERT INTO L3_112.Attaques VALUES ('Tonnerre','Electrique',100);
INSERT INTO L3_112.Attaques VALUES ('Splash','Normal',0);
INSERT INTO L3_112.Attaques VALUES ('Tranch-Feuilles','Feuille',20);
INSERT INTO L3_112.Attaques VALUES ('Frappe-Eclair','Electrique',50);
INSERT INTO L3_112.Attaques VALUES ('Cauchemar','Fantôme',40);
INSERT INTO L3_112.Attaques VALUES ('Frappe','Combat',100);
INSERT INTO L3_112.Attaques VALUES ('Lance-Flamme','Feu',70);
INSERT INTO L3_112.Attaques VALUES ('Hyper-Beam','Normal',150);

--REMPLISSAGE DE LA TABLE FAIBLESSES
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Insecte','Feu');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Insecte','Vol');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Insecte','Roche');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Electrique','Terre');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Feu','Terre');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Feu','Roche');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Feu','Eau');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Feuille','Insecte');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Feuille','Fire');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Feuille','Vol');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Feuille','Glace');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Feuille','Poison');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Normal','Combat');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Roche','Combat');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Roche','Feuille');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Roche','Sol');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Roche','Eau');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Vol','Electrique');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Vol','Glace');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Vol','Roche');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Sol','Feuille');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Sol','Glace');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Sol','Eau');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Poison','Sol');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Poison','Psychique');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Dragon','Dragon');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Dragon','Glace');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Combat','Vol');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Combat','Psychique');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Fantôme','Fantôme');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Glace','Combat');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Glace','Feu');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Glace','Roche');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Glace','Combat');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Psychique','Insecte');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Psychique','Fantôme');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Eau','Electrique');
INSERT INTO L3_112.Faiblesses VALUES (L3_112.seqIdFaib.nextval,'Eau','Feuille');


--REMPLISSAGE DE LA TABLE RESISTANCE
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Insecte','Combat');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Insecte','Feuille');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Insecte','Sol');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Electrique','Electrique');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Electrique','Vol');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Feu','Feu');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Feu','Insecte');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Feu','Feuille');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Feu','Glace');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Feuille','Feuille');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Feuille','Electrique');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Feuille','Sol');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Feuille','Eau');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Normal','Fantôme');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Roche','Feu');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Roche','Normal');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Roche','Poison');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Roche','Vol');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Vol','Insecte');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Vol','Combat');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Vol','Feuille');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Vol','Sol');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Sol','Poison');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Sol','Roche');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Sol','Electricite');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Poison','Insecte');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Poison','Combat');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Poison','Feuille');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Poison','Poison');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Dragon','Electricite');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Dragon','Feu');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Dragon','Feuille');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Dragon','Eau');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Combat','Insecte');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Combat','Roche');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Fantôme','Insecte');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Fantôme','Poison');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Fantôme','Normal');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Fantôme','Combat');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Glace','Glace');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Psychique','Combat');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Psychique','Psychique');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Eau','Feu');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Eau','Glace');
INSERT INTO L3_112.Resistances VALUES (L3_112.seqIdResi.nextval,'Eau','Eau');












