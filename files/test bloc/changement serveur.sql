SET SERVEROUTPUT ON;

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
		RAISE my_exception;
	ELSE
		SELECT COUNT(*)  INTO nb FROM Dresseurs WHERE Dresseurs.nomDresseur = my_nomDresseur AND Dresseurs.nomServeur = serveur_final;
		IF nb = 0 THEN
			UPDATE DRESSEURS SET nomServeur = serveur_final WHERE DRESSEURS.idDresseur = id;
			COMMIT;
		ELSE 
			RAISE my_exception;
		END IF;
	END IF;

	EXCEPTION 
		WHEN my_exception THEN
			DBMS_OUTPUT.PUT_LINE('erreur');
			
	

END;
/

execute changement_serveur;
show errors;
