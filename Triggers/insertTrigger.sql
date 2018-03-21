SET SERVEROUTPUT ON;

DROP TRIGGER insert_trigger;

--trigger fonctionne
CREATE OR REPLACE TRIGGER insert_trigger
BEFORE INSERT ON Dresseurs
FOR EACH ROW

DECLARE
  no_place_exception EXCEPTION; 
  nb_ligne NUMBER;
  nbPlace NUMBER;


BEGIN

  SELECT  nbJoueur INTO nbPlace FROM Serveurs WHERE Serveurs.nomServeur = :new.nomServeur;
  SELECT COUNT(*) INTO nb_ligne FROM Dresseurs  WHERE Dresseurs.nomServeur = :new.nomServeur;

  IF nb_ligne < nbPlace THEN
      DBMS_OUTPUT.PUT_LINE('insertion reussi');

  ELSE
    RAISE no_place_exception;

  END IF;



  EXCEPTION 
    WHEN no_place_exception THEN
        RAISE_APPLICATION_ERROR(-20001 , 'plus de place dans le serveur');
      

END;
/
 
INSERT INTO Dresseurs VALUES (25,'Yassine','Hoenn','Abra','Lance-Flamme');
SHOW ERRORS TRIGGER insert_trigger;
