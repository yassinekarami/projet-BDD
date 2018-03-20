-- faire attention au majuscule et au miniscule 
-- kanto != Kanto

SET SERVEROUTPUT ON;
---------------------------Bloc PlSQL ----------------------------------------
-- le champion du serveur est celui avec le pokemon qui fait le plus de degat
-- augmentation du nombre de joueur dans le serveur a chaque insert de joueur
-- changer le serveur d'un joueur





-- le champion du serveur est celui avec le pokemon qui fait le plus de degat
-- insertion d'un nouveau joueur dans la table Dresseur
-- verification que le serveur existe 


--insertion dresseur
/*
CREATE OR REPLACE PROCEDURE mise_a_jour
AS

my_nomDresseur VARCHAR2(50);
my_nomServeur VARCHAR2(20);
my_nomPokemon VARCHAR2(20);
my_nomAttaque VARCHAR2(20);
my_degat NUMBER;

nb NUMBER;
my_exception EXCEPTION;
my_champion   VARCHAR2(50);
nomServ VARCHAR2(20);
degat NUMBER;
nb_joueur_max NUMBER;
BEGIN 
	
	my_nomDresseur := '&1';
	my_nomServeur :='&2';
	my_nomPokemon := '&3';
	my_nomAttaque := '&4';

	SELECT nbDegats INTO my_degat FROM Attaques WHERE Attaques.nomAttaque = my_nomAttaque;

	-- verifiaction si serveur existe
	SELECT nomServeur, champion , nbJoueur INTO nomServ , my_champion , nb_joueur_max FROM Serveurs WHERE Serveurs.nomServeur = my_nomServeur;

	IF nomServ IS NULL  THEN
		RAISE my_exception;
	ELSE
		-- verification si pokemon existe
		SELECT COUNT(*) INTO nb FROM Pokemons WHERE Pokemons.nomPokemon = my_nomPokemon;
		IF nb =  0 THEN
			RAISE my_exception;
		ELSE
			--verification si attaque existe
			SELECT COUNT(*) INTO nb FROM Attaques WHERE  Attaques.nomAttaque = my_nomAttaque;
			IF nb = 0 THEN
				RAISE my_exception;
			ELSE
				-- on compare l'attaque avec celle du champion
				IF my_champion IS NULL THEN
				--	INSERT INTO Serveurs VALUES (my_nomServeur, nb_joueur_max , my_nomDresseur);
				--	INSERT INTO Dresseur VALUES (seqIdDres.nextval , my_nomDresseur , my_nomServeur , my_nomPokemon , my_nomAttaque);

				ELSE
					SELECT nbDegats INTO degat FROM Dresseurs  JOIN Attaques  JOIN Pokemons ON  Dresseurs.nomDresseur = my_champion;
					DBMS_OUTPUT.PUT_LINE('bonjour '|| degat);
				--	IF degat  > my_degat THEN
					--	INSERT INTO Dresseur VALUES (seqIdDres.nextval ,my_nomDresseur , my_nomServeur , my_nomPokemon , my_nomAttaque);
				--	ELSE 

					--	INSERT INTO Serveurs  VALUES (my_nomServeur ,nb_joueur_max, my_nomDresseur);
					--	INSERT INTO Dresseur  VALUES (seqIdDres.nextval , my_nomDresseur , my_nomServeur , my_nomPokemon , my_nomAttaque);
				--	END IF;
				END IF;
			END IF;
		END IF;
	END IF;

	

END; 

/

*/

-- changement de serveur pour un joueur
/*
CREATE OR REPLACE PROCEDURE changement_serveur
AS
	my_nomDresseur VARCHAR2(50);
	serveur_final VARCHAR2(20);	
	my_nomPokemon VARCHAR2(20);
	my_nomAttaque VARCHAR2(20);	

	nb INTEGER;
	serveur_origin VARCHAR2(20);
	id INTEGER;

	my_exception EXCEPTION;
BEGIN

	my_nomDresseur := '&1';
	serveur_origin := '&2';
	serveur_final :='&3';

	SELECT idDresseur, nomPokemon , nomAttaque INTO id, my_nomPokemon , my_nomAttaque FROM Dresseurs WHERE Dresseurs.nomServeur = serveur_origin AND Dresseurs.nomDresseur = my_nomDresseur;



	IF  my_nomPokemon IS NULL THEN
		DBMS_OUTPUT.PUT_LINE('noooooooooooon');
	ELSE
		SELECT COUNT(*)  INTO nb FROM Dresseurs WHERE Dresseurs.nomDresseur = my_nomDresseur AND Dresseurs.nomServeur = serveur_final;
		IF nb = 0 THEN
			UPDATE DRESSEURS SET nomServeur = serveur_final WHERE DRESSEURS.idDresseur = id;
			COMMIT;
		ELSE 
			DBMS_OUTPUT.PUT_LINE('noooooooooooon');
		END IF;
	END IF;
	

END;
/

show errors;
*/

--procedure qui donne le dresseur le plus fort entre tout les serveurs
/*
CREATE OR REPLACE VIEW bigTable AS
SELECT nbDegats , nomServeur , nomDresseur
FROM Dresseurs  NATURAL JOIN Attaques;

CREATE OR REPLACE PROCEDURE champion_ultime
IS

degat NUMBER;
degatTmp NUMBER;
champReturn VARCHAR2(20);
servReturn VARCHAR2(50);

CURSOR c is SELECT * FROM Serveurs;
ligne c%ROWTYPE;

BEGIN

degat := 0;

FOR ligne in c
		LOOP
		--	DBMS_OUTPUT.PUT_LINE('serveur ' || ligne.nomServeur || ' champion ' ||ligne.champion );
			SELECT nbDegats INTO degatTmp FROM bigTable WHERE bigTable.nomServeur = ligne.nomServeur AND bigTable.nomDresseur = ligne.champion ;  
		--	DBMS_OUTPUT.PUT_LINE('degat ' || degatTmp || 'serveur ' || ligne.nomServeur || ' champion ' || ligne.champion);

			IF degat < degatTmp THEN

				degat := degatTmp;
				champReturn := ligne.champion;
				servReturn := ligne.nomServeur;

			END IF;
			
	
  		END LOOP;

  		DBMS_OUTPUT.PUT_LINE('serveur ' || servReturn || ' champion ' ||champReturn );
  		
		EXCEPTION WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('pas de donne');
			
  		

END;
/ 
execute champion_ultime;
show errors;

*/

CREATE OR REPLACE PROCEDURE statPokemon
IS

CURSOR c is SELECT * FROM Pokemons ORDER BY environement ASC;
ligne c%ROWTYPE;



BEGIN
FOR ligne in c 
	LOOP 
			DBMS_OUTPUT.PUT_LINE('nom pokemon ' || ligne.nomPokemon || ' environement ' ||ligne.environement );

	END LOOP;


END;
/

execute statPokemon;
show errors;



