SET SERVEROUTPUT ON;

DELETE FROM Dresseurs WHERE idDresseur = 25;

--mise a jour du champion du serveur 
CREATE OR REPLACE TRIGGER majServeur
BEFORE INSERT OR UPDATE ON Dresseurs
FOR EACH ROW

DECLARE
  error_exception EXCEPTION;
  degat_challenger NUMBER;
  degat_champion NUMBER;
  my_champion VARCHAR2(20);


BEGIN
  
	-- recupéré les degats du nouveau joueurs
   SELECT nbDegats INTO degat_challenger FROM Attaques WHERE nomAttaque = :new.nomAttaque;


	-- recupère le nom du champion
   SELECT champion INTO my_champion FROM Serveurs WHERE nomServeur = :new.nomServeur;

--recupère les degats du champion du serveur
   SELECT nbDegats INTO degat_champion FROM Dresseurs NATURAL JOIN Attaques WHERE nomServeur = :new.nomServeur AND nomDresseur = my_champion;


    DBMS_OUTPUT.PUT_LINE('challenger ' || degat_challenger);
    DBMS_OUTPUT.PUT_LINE('champion ' || degat_champion);

   IF degat_challenger > degat_champion THEN

    UPDATE Serveurs SET champion = :new.nomDresseur WHERE nomServeur = :new.nomServeur;
    DBMS_OUTPUT.PUT_LINE('mise a jour du champion');
    DBMS_OUTPUT.PUT_LINE('nom serveur ' || :new.nomServeur);
    DBMS_OUTPUT.PUT_LINE('le champion ' || :new.nomDresseur);

  ELSE 
     DBMS_OUTPUT.PUT_LINE('insertion reussi ');
   END IF;


  EXCEPTION 
    WHEN error_exception THEN
      RAISE_APPLICATION_ERROR(-20002 , 'erreur');

END;
/

INSERT INTO Dresseurs VALUES (25,'Yassine','Hoenn','Abra','Lance-Flamme');
SHOW ERRORS TRIGGER majServeur ;

