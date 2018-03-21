SET SERVEROUTPUT ON;

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

